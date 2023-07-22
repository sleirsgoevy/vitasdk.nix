{ pkgs ? import<nixpkgs>{} }:

with pkgs;

{
  "git+https://github.com/TheOfficialFloW/kubridge.git" = fetchFromGitHub {
    owner = "TheOfficialFloW";
    repo = "kubridge";
    rev = "40bffc3b4a98a6027617a353231308e8bba74305";
    sha256 = "0my4f35lmadhg296mw67vi4lpjqhangk8z65gprpffn7cr1f3r2j";
  };
  "git+https://github.com/v-atamanenko/vita-libdl.git#commit=bad0b43b7c018178dba8c059df3f9d9bd5ec742d" = fetchFromGitHub {
    owner = "v-atamanenko";
    repo = "vita-libdl";
    rev = "bad0b43b7c018178dba8c059df3f9d9bd5ec742d";
    sha256 = "1n3q8qh5dk24l3i6gxvblmvkfjy0hnq5vgf4fcjn5zrz7xbqiiaj";
  };
  "git+https://github.com/Rinnegatamante/math-neon.git" = fetchFromGitHub {
    owner = "Rinnegatamante";
    repo = "math-neon";
    rev = "0faab814782c071ff4015527f1ca955ab1ccc470";
    sha256 = "02nn1c7fzrbsf61jgdfz7aqc9fbxywms26r9vg5r93limdjd943x";
  };
  "git+https://github.com/Rinnegatamante/vitaGL.git" = fetchFromGitHub {
    owner = "Rinnegatamante";
    repo = "vitaGL";
    rev = "feb908de897b22d7ec5470db8faf48b63c480879";
    sha256 = "0s8a8c551yfgxj2wmfj5whrk3wxmspwlnf82802vlfyfasp8smji";
  };
  "https://github.com/libsdl-org/SDL/archive/ac13ca9ab691e13e8eebe9684740ddcb0d716203.tar.gz" = fetchurl {
    url = "https://github.com/libsdl-org/SDL/archive/ac13ca9ab691e13e8eebe9684740ddcb0d716203.tar.gz";
    sha256 = "0amlr9jjwgvpavld3m5733diar3nsh1hg8rk3lwqy77x8q8n78j4";
  };
  "git+https://git.code.sf.net/p/libpng/code#tag=v1.6.39" = fetchgit {
    url = "https://git.code.sf.net/p/libpng/code";
    rev = "07b8803110da160b158ebfef872627da6c85cbdf";
    sha256 = "1xcnr9xvwn16apaf8r63i2viszl2a63gsrr528maa2gvxvnkw5a4";
  };
  "git+https://github.com/libjpeg-turbo/libjpeg-turbo#tag=2.1.5.1" = fetchFromGitHub {
    owner = "libjpeg-turbo";
    repo = "libjpeg-turbo";
    rev = "8ecba3647edb6dd940463fedf38ca33a8e2a73d1";
    sha256 = "12b1cghj86wpzl4cfmfxxidbkn5lr0ijkixvbjj8bzvyk82q397p";
  };
  "git+https://github.com/xerpi/libvita2d.git" = fetchFromGitHub {
    owner = "xerpi";
    repo = "libvita2d";
    rev = "a8f15ab09d5233f0a4e4ad0e8f6ade0da888cbed";
    fetchSubmodules = true;
    sha256 = "0rgq49qcfpb3912yxgbva8j8lig7vjg01k6bxm2v6s2swpnd294i";
  };
  "git+https://github.com/Cpasjuste/VTinyGL.git" = fetchFromGitHub {
    owner = "Cpasjuste";
    repo = "VTinyGL";
    rev = "1463b584c86a3b037ec9f3aa12d2ae63978ec05e";
    sha256 = "19xgc6nigqp10165ixfjz5rfp0h94d2838cld2ibpnybakq59xcs";
  };
  "git+https://github.com/d3m3vilurr/vita-openssl.git" = fetchFromGitHub {
    owner = "d3m3vilurr";
    repo = "vita-openssl";
    rev = "cd52124ffc8e0f0fc8e2bdde93d4c022a0a7fc53";
    sha256 = "1qd9pj210cxzis65v5w71nf6id4pfpwb0jv4q9bmx5ddsv36ykpv";
  };
}
