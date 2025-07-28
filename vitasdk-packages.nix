{ pkgs ? import<nixpkgs>{},
  vitasdk ? pkgs.callPackage ./vitasdk-core.nix { inherit pkgs; },
  lockfile ? import ./vitasdk-package-lock.nix { inherit pkgs; },
  overrides ? import ./vitasdk-package-overrides.nix { inherit pkgs; },
  vitabuild-parser ? import ./vitabuild-parser.nix { inherit pkgs; } }:

with pkgs;
with vitabuild-parser;

let
  getSourceDerivations = lockfile: path: override: extra: builtins.map ({fst, snd}: let
    url = (builtins.elemAt (lib.splitString "#" fst) 0);
    basename = builtins.baseNameOf url;
    l = builtins.stringLength basename;
    isGit = l >= 4 && (builtins.substring (l - 4) 4 basename) == ".git";
  in {
    object = if (builtins.length (lib.splitString "/" fst)) == 1 && builtins.pathExists "${path}/${fst}"
      then "${path}/${fst}"
      else if snd != "SKIP"
      then fetchurl { url = fst; sha256 = snd; }
      else lockfile."${fst}";
    path = if isGit then builtins.substring 0 (l - 4) basename else basename;
  } // (let
      l = builtins.stringLength url;
    in if l >= 4 && (builtins.substring 0 4 url) == "git+"
      then { isGit = true; origin = builtins.substring 4 (l - 4) url; }
      else { isGit = false; origin = url; }
  ) // (let
    sp = lib.splitString "#commit=" (builtins.concatStringsSep "#commit=" (lib.splitString "#tag=" (builtins.concatStringsSep "#commit=" (lib.splitString "#branch=" fst))));
  in if (builtins.length sp) == 2
    then { hasCommitHash = true; commitHash = (builtins.elemAt sp 1); }
    else { hasCommitHash = false; commitHash = ""; }
  )) (if override != null then (map (x: { fst = x; snd = "SKIP"; }) override) else (lib.zipLists (getSources path) (getShaSums path)) ++ (map (x: { fst = x; snd = "SKIP"; }) extra));
  getDependencyDerivations = repo: path: builtins.map (x: repo."${x}") (getDepends path);
  fakeVdpm = writeShellScriptBin "vdpm" "";
  buildPackage = lockfile: overrides: repo: path: stdenvNoCC.mkDerivation {
    name = getName path;
    version = "${getVersion path}-${getPkgrel path}-vitasdk";
    src = path;
    buildInputs = [ repo.vitasdk ] ++ (getDependencyDerivations repo path) ++ (({ "${getName path}" = f: []; } // overrides.vitaDeps)."${getName path}" repo);
    propagatedBuildInputs = ({ "${getName path}" = f: []; } // overrides.propagatedBuildInputs)."${getName path}" repo;
    nativeBuildInputs = [ repo.vitasdk cmake pkg-config which libarchive fakeroot fakeVdpm git autoconf automake libtool ] ++ ({ "${getName path}" = []; } // overrides.deps)."${getName path}";
    phases = [ "unpackPhase" "copyPhase" "patchPhase" "buildPhase" "installPhase" "fixupPhase" ];
    copyPhase = (lib.concatMapStrings (q: ''
      cp -r ${q.object} ${q.path}
      chmod -R +w ${q.path}
    '') (getSourceDerivations lockfile path (overrides.sources."${getName path}" or null) (overrides.extraSources."${getName path}" or []))) + ''
      ln -s ${repo.vitasdk} $out
      export VITASDK=$out
    '';
    patchPhase = (overrides.patches."${getName path}" or "") + "\n" + (lib.concatMapStrings (q: if q.isGit then ''
      if ! [[ -d ${q.path}/.git ]]; then
      (
        cd ${q.path}
        git init
        git add -f .
        git config user.name stub
        git config user.email stub@example.org
        GIT_COMMITTER_DATE='Jan 1 00:00:00 1970 +0000' git commit -m 123 --date 'Jan 1 00:00:00 1970 +0000'
        git remote add origin "file:///$PWD"
        ${if q.hasCommitHash then ''
          git checkout -B ${q.commitHash}
          git push origin ${q.commitHash}
        '' else ""}
        git remote set-url origin ${q.origin}
      ); fi
    '' else "") (getSourceDerivations lockfile path (overrides.sources."${getName path}" or null) (overrides.extraSources."${getName path}" or [])));
    buildPhase = ''
      env -u PKG_CONFIG PATH="${gcc}/bin:${binutils}/bin:$PATH" vita-makepkg
    '';
    installPhase = ''
      rm $out
      mv pkg/*/$VITASDK $out
      mkdir -p $out/nix-support
      cat > $out/nix-support/setup-hook << EOF
      export VITASDK_PKG_CONFIG_EXTRA_PATHS="\${"$"}{VITASDK_PKG_CONFIG_EXTRA_PATHS:-}:$out/arm-vita-eabi/lib/pkgconfig:$out/arm-vita-eabi/share/pkgconfig"
      export VITASDK_EXTRA_CFLAGS="\${"$"}{VITASDK_EXTRA_CFLAGS:-} -I $out/arm-vita-eabi/include -L $out/arm-vita-eabi/lib"
      export VITASDK_CMAKE_EXTRA_PATHS="\${"$"}{VITASDK_CMAKE_EXTRA_PATHS:-};$out/arm-vita-eabi"
      export CMAKE_PREFIX_PATH="\${"$"}{CMAKE_PREFIX_PATH:+\$CMAKE_PREFIX_PATH:}:$out/arm-vita-eabi"
      EOF
    '';
  };
  makeRepo = super: dir: lib.fix (self: super // {
    buildPackage = buildPackage super.lockfile super.overrides self;
    makeRepo = makeRepo self;
    overrideLockfile = override: makeRepo (super // { lockfile = super.lockfile // override; }) dir;
    addOverrides = override: makeRepo (super // { overrides = builtins.mapAttrs (k: v: (override // super.overrides).${k} // (super.overrides // override).${k}) (super.overrides // override); }) dir;
    softfpPackages = makeRepo super.softfpPackages dir;
  } // (builtins.foldl' (s: q: s // { "${q}" = self.buildPackage "${dir}/${q}"; }) {} (getAllPackages dir)));
in

makeRepo (rec {
  inherit lockfile overrides vitasdk;
  softfpPackages = {
    inherit lockfile softfpPackages;
    vitasdk = vitasdk.override { softfp = true; };
    overrides = builtins.mapAttrs (k: v: if overrides.softfpOverrides ? "${k}" then (v // overrides.softfpOverrides."${k}") else v) overrides;
  };
}) lockfile."git+https://github.com/vitasdk/packages.git"
