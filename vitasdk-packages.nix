{ pkgs ? import<nixpkgs>{},
  vitasdk ? import ./vitasdk-core.nix { inherit pkgs; },
  lockfile ? import ./vitasdk-package-lock.nix { inherit pkgs; },
  overrides ? import ./vitasdk-package-overrides.nix { inherit pkgs; } }:

with pkgs;

let
  getPkgVariable = sep: var: path: builtins.readFile "${stdenv.mkDerivation {
    name = "get-pkg-variable-${path}-${var}";
    phases = "installPhase";
    installPhase = ''
      . ${path}/VITABUILD
      IFS='${sep}'
      echo -n "${"$"+var}" > $out
    '';
  }}";
  nonEmptySplit = sep: s: if s == "" then [] else lib.splitString sep s;
  getName = getPkgVariable "\n" "pkgname";
  getVersion = getPkgVariable "\n" "pkgver";
  getPkgrel = getPkgVariable "\n" "pkgrel";
  getDepends = path: nonEmptySplit " " (getPkgVariable " " "{depends[*]}" path);
  getSources = path: nonEmptySplit "\n" (getPkgVariable "\n" "{source[*]}" path);
  getShaSums = path: nonEmptySplit "\n" (getPkgVariable "\n" "{sha256sums[*]}" path);
  getSourceDerivations = lockfile: path: builtins.map ({fst, snd}: let
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
    sp = lib.splitString "#commit=" (builtins.concatStringsSep "#commit=" (lib.splitString "#tag=" fst));
  in if (builtins.length sp) == 2
    then { hasCommitHash = true; commitHash = (builtins.elemAt sp 1); }
    else { hasCommitHash = false; commitHash = ""; }
  )) (lib.zipLists (getSources path) (getShaSums path));
  getDependencyDerivations = repo: path: builtins.map (x: repo."${x}") (getDepends path);
  fakeVdpm = writeShellScriptBin "vdpm" "";
  buildPackage = lockfile: overrides: repo: path: stdenv.mkDerivation {
    name = getName path;
    version = "${getVersion path}-${getPkgrel path}-vitasdk";
    src = path;
    buildInputs = [ vitasdk ] ++ (getDependencyDerivations repo path);
    nativeBuildInputs = [ vitasdk cmake pkg-config which libarchive fakeroot fakeVdpm git ] ++ ({ "${getName path}" = []; } // overrides.deps)."${getName path}";
    phases = [ "unpackPhase" "copyPhase" "patchPhase" "buildPhase" "installPhase" ];
    copyPhase = (lib.concatMapStrings (q: ''
      cp -r ${q.object} ${q.path}
      chmod -R +w ${q.path}
    '') (getSourceDerivations lockfile path)) + ''
      ln -s ${vitasdk} $out
      export VITASDK=$out
    '';
    patchPhase = ({ "${getName path}" = ""; } // overrides.patches)."${getName path}" + "\n" + (lib.concatMapStrings (q: if q.isGit then ''
      if ! [[ -d ${q.path}/.git ]]; then
      (
        cd ${q.path}
        git init
        git add -f .
        git config user.name stub
        git config user.email stub@example.org
        git commit --allow-empty -m 123
        git remote add origin ${q.origin}
        ${if q.hasCommitHash then ''
          git checkout -b ${q.commitHash}
        '' else ""}
      ); fi
    '' else "") (getSourceDerivations lockfile path));
    buildPhase = "vita-makepkg";
    installPhase = ''
      rm $out
      mv pkg/*/$VITASDK $out
      mkdir -p $out/nix-support
      cat > $out/nix-support/setup-hook << EOF
      export VITASDK_PKG_CONFIG_EXTRA_PATHS="\${"$"}{VITASDK_PKG_CONFIG_EXTRA_PATHS:-}:$out/arm-vita-eabi/lib/pkgconfig:$out/arm-vita-eabi/share/pkgconfig"
      export VITASDK_EXTRA_CFLAGS="\${"$"}{VITASDK_EXTRA_CFLAGS:-} -I $out/arm-vita-eabi/include -L $out/arm-vita-eabi/lib"
      EOF
    '';
  };
  makeRepo = super: dir: lib.fix (self: super // {
    buildPackage = buildPackage super.lockfile super.overrides self;
  } // (builtins.foldl' (s: q: s // { "${q}" = self.buildPackage "${dir}/${q}"; }) {} (builtins.map ({fst, snd}: fst) (builtins.filter ({fst, snd}: snd == "directory" && fst != ".github") (lib.zipLists (builtins.attrNames (builtins.readDir dir)) (builtins.attrValues (builtins.readDir dir)))))));
in

makeRepo { inherit lockfile overrides vitasdk; } (fetchFromGitHub {
  owner = "vitasdk";
  repo = "packages";
  #rev = "fd618dfd97525a00cf1a0d6e00c6ee5f8c83611a";
  #sha256 = "0k32lixawxpdw9rxglyxid61aikc8ijf54cs15yv9l73a38nxxsa";
  rev = "cf47f3668fb83ea5129b9a66c18266da62f1ea4c";
  sha256 = "1kpsf5dzmcwhvqgi6fav3ps1d1lipmbqm5r1r1cpbi6r0fmdcn82";
})
