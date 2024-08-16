{ pkgs ? import<nixpkgs>{} }:

with pkgs;

rec {
  getPkgVariable = sep: var: path: builtins.readFile "${stdenv.mkDerivation {
    name = "get-pkg-variable-${builtins.baseNameOf path}-${var}";
    phases = "installPhase";
    installPhase = ''
      . ${path}/VITABUILD
      IFS='${sep}'
      echo -n "${"$"+var}" > $out
    '';
    allowSubstitutes = false;
    preferLocalBuild = true;
  }}";
  nonEmptySplit = sep: s: if s == "" then [] else lib.splitString sep s;
  getName = getPkgVariable "\n" "pkgname";
  getVersion = getPkgVariable "\n" "pkgver";
  getPkgrel = getPkgVariable "\n" "pkgrel";
  getDepends = path: nonEmptySplit " " (getPkgVariable " " "{depends[*]}" path);
  getSources = path: nonEmptySplit "\n" (getPkgVariable "\n" "{source[*]}" path);
  getShaSums = path: nonEmptySplit "\n" (getPkgVariable "\n" "{sha256sums[*]}" path);
  getAllPackages = repo: builtins.map ({fst, snd}: fst) (builtins.filter ({fst, snd}: snd == "directory" && fst != ".github") (lib.zipLists (builtins.attrNames (builtins.readDir repo)) (builtins.attrValues (builtins.readDir repo))));
}
