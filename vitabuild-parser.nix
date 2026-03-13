{ pkgs ? import<nixpkgs>{} }:

with pkgs;

rec {
  getPkgVariables = sep: var: base: paths: let
    dumped = stdenv.mkDerivation {
      name = "get-pkg-variable-${builtins.baseNameOf base}-${var}";
      phases = "installPhase";
      installPhase = "mkdir -p $out\n" + builtins.concatStringsSep "" (map ({name, value}: ''
        (
          . ${value}/VITABUILD
          IFS='${sep}'
          echo -n "${"$"+var}" > $out/${name}
        )
      '') (builtins.filter (x: builtins.pathExists "${x.value}/VITABUILD") (lib.attrsToList paths)));
      allowSubstitutes = false;
      preferLocalBuild = true;
    };
  in builtins.mapAttrs (k: v: builtins.readFile "${dumped}/${k}") paths;
  getPkgVariablesFromRepo = sep: var: repo: getPkgVariables sep var repo (builtins.mapAttrs (k: v: "${repo}/${k}") (builtins.readDir repo));
  getPkgVariable = sep: var: path:
    if builtins.substring 0 (builtins.stringLength builtins.storeDir + 1) (builtins.dirOf (builtins.dirOf path) + "/") == builtins.storeDir + "/" then
      (getPkgVariablesFromRepo sep var (builtins.dirOf path))."${builtins.unsafeDiscardStringContext (builtins.baseNameOf path)}"
    else
      (getPkgVariables sep var path { out = path; }).out;
  nonEmptySplit = sep: s: if s == "" then [] else lib.splitString sep s;
  getName = getPkgVariable "\n" "pkgname";
  getVersion = getPkgVariable "\n" "pkgver";
  getPkgrel = getPkgVariable "\n" "pkgrel";
  getDepends = path: nonEmptySplit " " (getPkgVariable " " "{depends[*]}" path);
  getSources = path: nonEmptySplit "\n" (getPkgVariable "\n" "{source[*]}" path);
  getShaSums = path: nonEmptySplit "\n" (getPkgVariable "\n" "{sha256sums[*]}" path);
  getAllPackages = repo: builtins.map ({fst, snd}: fst) (builtins.filter ({fst, snd}: snd == "directory" && fst != ".github") (lib.zipLists (builtins.attrNames (builtins.readDir repo)) (builtins.attrValues (builtins.readDir repo))));
}
