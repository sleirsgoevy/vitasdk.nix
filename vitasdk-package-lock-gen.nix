{ pkgs ? import<nixpkgs>{},
  vitabuild-parser ? import ./vitabuild-parser.nix { inherit pkgs; },
  core-inputs ? import ./vitasdk-core-inputs.nix,
  packages ? null }:

with pkgs;
with vitabuild-parser;

let
  maybeAttr = attr: value: if value == null then {} else { "${attr}" = value; };
  fetchgit' = { url, rev ? null, ref ? null, fetchSubmodules ? false }: builtins.fetchGit ({ inherit url; submodules = fetchSubmodules; allRefs = rev != null; shallow = true; } // (maybeAttr "ref" ref) // (maybeAttr "rev" rev));
  getRev = { url, rev ? null, ref ? null, fetchSubmodules ? false }: if rev == null && commitOverrides ? "${url}" then commitOverrides."${url}" else (fetchgit' { inherit url rev ref fetchSubmodules; }).rev;
  getHash = { url, rev ? null, ref ? null, fetchSubmodules ? false }: (fetchgit' { inherit url fetchSubmodules; rev = getRev { inherit url rev ref fetchSubmodules; }; }).narHash;
  startsWith = prefix: s: (builtins.stringLength s) >= (builtins.stringLength prefix) && (builtins.substring 0 (builtins.stringLength prefix) s) == prefix;
  endsWith = suffix: s: (builtins.stringLength s) >= (builtins.stringLength suffix) && (builtins.substring ((builtins.stringLength s) - (builtins.stringLength suffix)) (builtins.stringLength suffix) s) == suffix;
  removePrefix = prefix: s: if startsWith prefix s then builtins.substring (builtins.stringLength prefix) ((builtins.stringLength s) - (builtins.stringLength prefix)) s else s;
  removeSuffix = suffix: s: if endsWith suffix s then builtins.substring 0 ((builtins.stringLength s) - (builtins.stringLength suffix)) s else s;
  stringContains = pattern: s: (builtins.length (lib.splitString pattern s)) > 1;
  fetchgitImpure = { url, rev ? null, ref ? null, fetchSubmodules ? false }: fetchgit {
    inherit url fetchSubmodules;
    rev = getRev { inherit url rev fetchSubmodules; };
    sha256 = getHash { inherit url rev fetchSubmodules; };
  };
  fetchgitFormat = { url, rev ? null, ref ? null, fetchSubmodules ? false }: if startsWith "https://github.com/" url
    then let
      sp = lib.splitString "/" url;
    in ''
      fetchFromGitHub {
          owner = "${builtins.elemAt sp 3}";
          repo = "${builtins.elemAt sp 4}";
          rev = "${getRev { inherit url rev ref fetchSubmodules; }}";
          sha256 = "${getHash { inherit url rev ref fetchSubmodules; }}";
        ${if fetchSubmodules then "  fetchSubmodules = true;\n  " else ""}};
    ''
    else ''
      fetchgit {
          url = "${url}";
          rev = "${getRev { inherit url rev ref fetchSubmodules; }}";
          sha256 = "${getHash { inherit url rev ref fetchSubmodules; }}";
        };
    '';
  wgetFormat = { url }: ''
    fetchurl {
        url = "${url}";
        sha256 = "${builtins.hashFile "sha256" (builtins.fetchurl url)}";
      };
  '';
  handleURL = git: wget: fail: url: if startsWith "git+" url
    then let
      real_url = removeSuffix ".git" (removePrefix "git+" (builtins.elemAt (lib.splitString "#" url) 0));
      rev = if stringContains "#commit=" url
        then builtins.elemAt (lib.splitString "#commit=" url) 1
        else null;
      ref = if stringContains "#tag=" url
        then "refs/tags/${builtins.elemAt (lib.splitString "#tag=" url) 1}"
        else if stringContains "#branch" url
        then "${builtins.elemAt (lib.splitString "#branch=" url) 1}"
        else null;
      fetchSubmodules = stringContains "#recursive" url;
    in git { url = real_url; inherit rev ref fetchSubmodules; }
    else if (startsWith "http://" url) || (startsWith "https://" url)
    then wget { inherit url; }
    else fail url;
  urlNotSupported = url: throw "URL not supported: ${url}";
  urlFormat = url: "  \"${url}\" = " + (handleURL fetchgitFormat wgetFormat urlNotSupported url);
  urlFetch = handleURL fetchgitImpure builtins.fetchurl urlNotSupported;
  urlIsSupported = handleURL (x: true) (x: true) (x: false);
  uniq = list: builtins.attrNames (builtins.foldl' (s: q: s // { "${q}" = true; }) {} list);
  getNonPinnedSources = path: map ({fst, snd}: fst) (lib.filter ({fst, snd}: snd == "SKIP" && !(!(stringContains "/" fst) && builtins.pathExists "${path}/${fst}") && (urlIsSupported fst)) (lib.zipLists (getSources path) (getShaSums path)));
  getNonPinnedSourcesForRepo = repo: builtins.concatLists (map (x: getNonPinnedSources "${repo}/${x}") (getAllPackages repo));
  formatLockfile = urls: manual: ''
    { pkgs ? import<nixpkgs>{} }:

    with pkgs;

    {
    ${builtins.concatStringsSep "" (map urlFormat urls)}${manual}}
    '';
  repoUrl = "git+https://github.com/vitasdk/packages.git";
  commitOverrides = {
  };
  manualLock = "  "+''
    "svn://svn.code.sf.net/p/lame/svn/trunk/lame#revision=r6403" = fetchsvn {
        url = "svn://svn.code.sf.net/p/lame/svn/trunk/lame";
        rev = "r6403";
        sha256 = "0dws7012ngd4z99a8wd9nwbjcnvgv4vf67i7g631clhgjhs9vybq";
      };
  '';
in

writeTextFile {
  name = "vita-package-lock.nix";
  text = formatLockfile (uniq ((map (f: f.object) core-inputs.subprojects) ++ core-inputs.tarballs ++ [ core-inputs.src repoUrl ] ++ getNonPinnedSourcesForRepo (if packages != null then "${packages}" else urlFetch repoUrl))) manualLock;
}
