{ pkgs ? import<nixpkgs>{} }:

with pkgs;

{
  "git+https://git.code.sf.net/p/libpng/code#tag=v1.6.40" = fetchgit {
    url = "https://git.code.sf.net/p/libpng/code";
    rev = "f135775ad4e5d4408d2e12ffcc71bb36e6b48551";
    sha256 = "sha256-Rad7Y5Z9PUCipBTQcB7LEP8fIVTG3JsnMeknUkZ/rRg=";
  };
  "git+https://github.com/Cpasjuste/VTinyGL.git" = fetchFromGitHub {
    owner = "Cpasjuste";
    repo = "VTinyGL";
    rev = "1463b584c86a3b037ec9f3aa12d2ae63978ec05e";
    sha256 = "sha256-mvVU8FTL27uiaJShgUQjCYLrcvnS9VhMAOHiF61hr6c=";
  };
  "git+https://github.com/DaveeFTW/libk.git#branch=dev" = fetchFromGitHub {
    owner = "DaveeFTW";
    repo = "libk";
    rev = "5aa300ce6c3c72c91fc417bd01df298ea6410044";
    sha256 = "sha256-YTNkYCv+sXijrhojBJ0tSB5D4YCVIWLI7Anc7qrJzvU=";
  };
  "git+https://github.com/DrakonPL/bullet-physics-vita.git" = fetchFromGitHub {
    owner = "DrakonPL";
    repo = "bullet-physics-vita";
    rev = "b75d5ba1ccbbdf7dd12f65976a45f0ca618fa9ac";
    sha256 = "sha256-3dYxNS2wB+spaJG99JJZjNndcPdY5GciKhnfc/ODzjM=";
  };
  "git+https://github.com/ImageOptim/libimagequant.git#tag=2.17.0" = fetchFromGitHub {
    owner = "ImageOptim";
    repo = "libimagequant";
    rev = "c7e0fb3ec397d5049f95a172006ae81dd6db26bf";
    sha256 = "sha256-ZoBCZsoUO66X4sDbMO89g4IX5+jqGMLGR7aC2UwD2tE=";
  };
  "git+https://github.com/Konstanty/libmodplug.git" = fetchFromGitHub {
    owner = "Konstanty";
    repo = "libmodplug";
    rev = "d1b97ed0020bc620a059d3675d1854b40bd2608d";
    sha256 = "sha256-wBOAbCLUExdU+rg5NSghC8QXlMwsYBUkt2EsEvFKMug=";
  };
  "git+https://github.com/Meinersbur/isl.git#tag=isl-0.21" = fetchFromGitHub {
    owner = "Meinersbur";
    repo = "isl";
    rev = "f8b5d3df1e4dd2c4a300d25954d344b757347f2c";
    sha256 = "sha256-eiSFycq3KfqJnHs+quSRfbwv+RjPEgLeuyn8323Hux8=";
  };
  "git+https://github.com/Northfear/SDL-1.2-vita.git" = fetchFromGitHub {
    owner = "Northfear";
    repo = "SDL-1.2-vita";
    rev = "c7158c8a9e5ff2fd3daca7556e1774927c2a4511";
    sha256 = "sha256-uM150m+UljYgTCOS3mKK7F4F5xQHdvK2jtbyMeD67pM=";
  };
  "git+https://github.com/Rinnegatamante/imgui-vita.git" = fetchFromGitHub {
    owner = "Rinnegatamante";
    repo = "imgui-vita";
    rev = "7163b8246818f18b430f88b58ba006fd6ff89996";
    sha256 = "sha256-kJsUBTC9VROZ5OEVlCTGWDBpA0joPjWmRZX9FGS5Bjg=";
  };
  "git+https://github.com/Rinnegatamante/kuio.git" = fetchFromGitHub {
    owner = "Rinnegatamante";
    repo = "kuio";
    rev = "48762fc041e707207008b9d294ca8fcfd71b9835";
    sha256 = "sha256-pHsVy0SBPqN6rLUy65FJ202wnevuTLu73v60+iaObrs=";
  };
  "git+https://github.com/Rinnegatamante/libtoloader.git" = fetchFromGitHub {
    owner = "Rinnegatamante";
    repo = "libtoloader";
    rev = "41d2231a5fa14627f9492b768085123ecc49ea14";
    sha256 = "sha256-u5dc2qbkbaCgR/EwFP8cWsCneuASKkT6afH15O7Tx+E=";
  };
  "git+https://github.com/Rinnegatamante/math-neon.git" = fetchFromGitHub {
    owner = "Rinnegatamante";
    repo = "math-neon";
    rev = "0faab814782c071ff4015527f1ca955ab1ccc470";
    sha256 = "sha256-fZDUZKuRjpTL2ykboSv3fbnEsDrftSeDcXrl7w4L1go=";
  };
  "git+https://github.com/Rinnegatamante/taipool.git" = fetchFromGitHub {
    owner = "Rinnegatamante";
    repo = "taipool";
    rev = "9d03e40257528f5bdd3376b319fc9bbe83a0717e";
    sha256 = "sha256-IqDjhkh72+g1XzwFHv7t5OMGgXfnNpTLegppNFPCkE8=";
  };
  "git+https://github.com/Rinnegatamante/vitaGL.git" = fetchFromGitHub {
    owner = "Rinnegatamante";
    repo = "vitaGL";
    rev = "75e30ba8994d94826ddfefd71e9c3f4571b6b4bb";
    sha256 = "sha256-84z8r06xznwBdJyWkDyRatQNKsrmRLDmCBy/e9x/7rs=";
  };
  "git+https://github.com/SonicMastr/Pigs-In-A-Blanket.git" = fetchFromGitHub {
    owner = "SonicMastr";
    repo = "Pigs-In-A-Blanket";
    rev = "343459751aa32e2a1bb8b54805a64a39d1b3f13a";
    sha256 = "sha256-7A6OwS7HXXe3F1f0FNFPNgC5j+v6cqgmw1IFanUljH8=";
  };
  "git+https://github.com/SonicMastr/cpython-vita.git" = fetchFromGitHub {
    owner = "SonicMastr";
    repo = "cpython-vita";
    rev = "4f6d0590f16b7c55e0656b7c93a676fc10d1a1bc";
    sha256 = "sha256-kAZg2ZMEsz6/YFKsLbrfq9AQrquavMR0uzGRdYqb9/Y=";
  };
  "git+https://github.com/SonicMastr/cpython-vita.git#branch=3.11" = fetchFromGitHub {
    owner = "SonicMastr";
    repo = "cpython-vita";
    rev = "fa69d3fb79272d8257fb0fb4a89c87a9cd716ee7";
    sha256 = "sha256-m3X/vpmK+bkbpl8mU8lFBxeut3sEh7iwCJNVh1F2Ndk=";
  };
  "git+https://github.com/SonicMastr/vita-openssl3.git#branch=OpenSSL_1_1_1-vita" = fetchFromGitHub {
    owner = "SonicMastr";
    repo = "vita-openssl3";
    rev = "0a851f7911a89ad82f0f3ada54939bb12acdd476";
    sha256 = "sha256-0poyaJ/dB8K3AQRefSpyKtMhFiCj7aGt8MosG/b09ag=";
  };
  "git+https://github.com/TheOfficialFloW/kubridge.git" = fetchFromGitHub {
    owner = "TheOfficialFloW";
    repo = "kubridge";
    rev = "40bffc3b4a98a6027617a353231308e8bba74305";
    sha256 = "sha256-UuThQmbHOnfzfcV8NJ9VEMtLSdzH8GqSeLCpSstwxFc=";
  };
  "git+https://github.com/bucanero/libun7zip.git#commit=6d824234a6b7953e5a0f2578b4d9e49e8d770ca8" = fetchFromGitHub {
    owner = "bucanero";
    repo = "libun7zip";
    rev = "6d824234a6b7953e5a0f2578b4d9e49e8d770ca8";
    sha256 = "sha256-dMmAl4DL/qsHVkV0YmqfMaKtqn3AaTUvjAZd9OKEHUc=";
  };
  "git+https://github.com/cisco-open-source/libmpeg2#tag=upstream/0.5.1" = fetchFromGitHub {
    owner = "cisco-open-source";
    repo = "libmpeg2";
    rev = "98aa5c414ea65572679856329c69d480e35061df";
    sha256 = "sha256-j/QS59J4y0bzxmcScmf7oy9IrlLBpiIMv+T0BXwuMCM=";
  };
  "git+https://github.com/cpasjuste/libmad-psp2.git#branch=master" = fetchFromGitHub {
    owner = "cpasjuste";
    repo = "libmad-psp2";
    rev = "f20935780036a8bc5e760627819b61bcd39647ee";
    sha256 = "sha256-nkBdiDSkfe3YEJ9VOSLcNcHJaMg3hMpjYzRds+O4BCI=";
  };
  "git+https://github.com/cy33hc/imgui-vita2d.git" = fetchFromGitHub {
    owner = "cy33hc";
    repo = "imgui-vita2d";
    rev = "a849382de1b9e1662ec1440cf7a936f3b4cacff3";
    sha256 = "sha256-G61HE32JO6bqBeLvwKRQi+rfyk0IKvR03jUCB4MWk7I=";
  };
  "git+https://github.com/d3m3vilurr/vita-curl.git" = fetchFromGitHub {
    owner = "d3m3vilurr";
    repo = "vita-curl";
    rev = "2fe4833851d8e5992ddd01393794eef9d26b6442";
    sha256 = "sha256-yO5XoGfu0eElgm5h5Z8sRYv4WYCui4wOm1Nw/Wmdad0=";
  };
  "git+https://github.com/d3m3vilurr/vita-openssl.git" = fetchFromGitHub {
    owner = "d3m3vilurr";
    repo = "vita-openssl";
    rev = "cd52124ffc8e0f0fc8e2bdde93d4c022a0a7fc53";
    sha256 = "sha256-+05vxtatlV5XwmRLsPh1l7RonA2Hl12Mjr8zEIS8qeE=";
  };
  "git+https://github.com/diasurgical/asio.git#commit=cfbe961e2d6e2978d5e081231e4f798df46437c5" = fetchFromGitHub {
    owner = "diasurgical";
    repo = "asio";
    rev = "cfbe961e2d6e2978d5e081231e4f798df46437c5";
    sha256 = "sha256-Eh4T4Xl1BCqvG9/k7Ma8jv1htDv5tZk/OKSns4hy7CY=";
  };
  "git+https://github.com/divideconcept/FluidLite.git#commit=7c150b021f8b7e7d4f624bbad644fd2f96e5826b" = fetchFromGitHub {
    owner = "divideconcept";
    repo = "FluidLite";
    rev = "7c150b021f8b7e7d4f624bbad644fd2f96e5826b";
    sha256 = "sha256-rOPGPjDaLGw175fs95Xo9WbSvH+mJUdSXJNB2TyI2OE=";
  };
  "git+https://github.com/fgsfdsfgs/fluidsynth-lite.git" = fetchFromGitHub {
    owner = "fgsfdsfgs";
    repo = "fluidsynth-lite";
    rev = "918f2107ea72c2765c29d9ee6f78d19b36374ed8";
    sha256 = "sha256-hj1hj1lCvOpb73jh6fm7VS5enhMlwnFJmVNqS7GDPFU=";
  };
  "git+https://github.com/frangarcj/libvita2d_ext.git" = fetchFromGitHub {
    owner = "frangarcj";
    repo = "libvita2d_ext";
    rev = "c3f5774bac28a41c75b0ca1e7179656e01a943f2";
    sha256 = "sha256-+eIsY5/VKYTS5sQWnjsqpAfeg0QcRjcz4lGf9HEH7X8=";
  };
  "git+https://github.com/frangarcj/opensles.git" = fetchFromGitHub {
    owner = "frangarcj";
    repo = "opensles";
    rev = "14b51ac10b4887e8b0564903b0d9765653ce2c3b";
    sha256 = "sha256-/FtTkRpSirNY0niVp+E0FAmD7lKQb5k08BZHvMnLEzY=";
  };
  "git+https://github.com/jbeder/yaml-cpp.git" = fetchFromGitHub {
    owner = "jbeder";
    repo = "yaml-cpp";
    rev = "76dc6715734295ff1866bfc32872ff2278258fc8";
    sha256 = "sha256-DiX0YzNbnhuE+eH0+odHHTw4+/R+xRA6aoyu1ILUsck=";
  };
  "git+https://github.com/lecram/gifdec.git" = fetchFromGitHub {
    owner = "lecram";
    repo = "gifdec";
    rev = "1dcbae19363597314f6623010cc80abad4e47f7c";
    sha256 = "sha256-IBtpr+RRkbnHDfi1R3JgGbg7A2+C92/LRcufFmNGf5I=";
  };
  "git+https://github.com/libjpeg-turbo/libjpeg-turbo#tag=3.0.1" = fetchFromGitHub {
    owner = "libjpeg-turbo";
    repo = "libjpeg-turbo";
    rev = "ec32420f6b5dfa4e86883d42b209e8371e55aeb5";
    sha256 = "sha256-YeFeBR0S5lrOa9aFYAZcDZXt9IryyTOuJEzDalp5PJQ=";
  };
  "git+https://github.com/libsdl-org/SDL_mixer.git#commit=656a45a604bbdd23ebceb9067fb67d1bc3b5bcc5" = fetchFromGitHub {
    owner = "libsdl-org";
    repo = "SDL_mixer";
    rev = "656a45a604bbdd23ebceb9067fb67d1bc3b5bcc5";
    sha256 = "sha256-+4HDObxU6f97k+j3XGp6vucPYJZ/+aKPOhZKnFDgOa4=";
  };
  "git+https://github.com/psxdev/debugnet.git" = fetchFromGitHub {
    owner = "psxdev";
    repo = "debugnet";
    rev = "26787fce84582daa8f0c34726a5ca4aef0c6a5b8";
    sha256 = "sha256-nMBYeaR2oxQkKL33VlvFtxEt5NCxy1q+8oavsJo4Ufw=";
  };
  "git+https://github.com/usineur/mikmod.git#branch=vita" = fetchFromGitHub {
    owner = "usineur";
    repo = "mikmod";
    rev = "eeacdaa03e3f5e64b41443606d9412dd07f995c8";
    sha256 = "sha256-uVJSiiE1p3YRfKlX2H7PSFIGL2ce8I3DBsFjRLArs/w=";
  };
  "git+https://github.com/v-atamanenko/vita-libdl.git#commit=bad0b43b7c018178dba8c059df3f9d9bd5ec742d" = fetchFromGitHub {
    owner = "v-atamanenko";
    repo = "vita-libdl";
    rev = "bad0b43b7c018178dba8c059df3f9d9bd5ec742d";
    sha256 = "sha256-UsWIVz8//2Ilc8S9XbCFwEs3d6Vr92fioETMViBGeNg=";
  };
  "git+https://github.com/vitasdk/buildscripts" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "buildscripts";
    rev = "bc2740a0a4f8e8b76168ea846ec08fb2e21ef8d4";
    sha256 = "sha256-lEp2gmDLeXUHGUgVX2Gi3FWsvxIWML19Hv329EdG0yw=";
  };
  "git+https://github.com/vitasdk/libzip.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "libzip";
    rev = "33fb70457b5dc6a6c95387b0b12d873696419878";
    sha256 = "sha256-gHVay+LDujkUqzzNSuLPL/DuKljAamNjd2oAgq3G++U=";
  };
  "git+https://github.com/vitasdk/newlib.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "newlib";
    rev = "b89e5bc183b516945f9ee07eef483ecb916e45ff";
    sha256 = "sha256-4NWUOPcT8IpPmiPyq9JrDa60iLQ1PtpSdbQ+Ieys/Qk=";
  };
  "git+https://github.com/vitasdk/packages.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "packages";
    rev = "c8c3a00f6dbfca0fe0ae0b545797fa56a079bbe3";
    sha256 = "sha256-YUGlqG29aUFp6Hkwp7m79AElnLrTlcOD+xOhde68W5k=";
  };
  "git+https://github.com/vitasdk/pthread-embedded.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "pthread-embedded";
    rev = "63e1cd9152082d9ccb1b38d67a4caf975562fbeb";
    sha256 = "sha256-svPNUjGfiqpjJRL63/1gqNIrFcdU/t3wAzaQXqRnAv8=";
  };
  "git+https://github.com/vitasdk/samples.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "samples";
    rev = "a799c2a8139915bd51706c198c493054dce30dac";
    sha256 = "sha256-tyatUwqRjMiGMijVW0DXqCCnvxY35sCw+X5NAk3K/xo=";
  };
  "git+https://github.com/vitasdk/vdpm.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "vdpm";
    rev = "0cf96d3e4e6f8eebf1cafcbe08827747feadc59d";
    sha256 = "sha256-PZI2M/YZ7i1QngkWm+hQ/nfkn4a1UpDhB1tl6ZP3ekU=";
  };
  "git+https://github.com/vitasdk/vita-headers.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "vita-headers";
    rev = "96b8721d90b2d3e0422b13129d33b46c9bfd812d";
    sha256 = "sha256-5fZ2RvtXZBFgFygB7N88vRineYkQZqQZSX8DKJSZ5kc=";
  };
  "git+https://github.com/vitasdk/vita-makepkg.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "vita-makepkg";
    rev = "0c7da211ef88d7dc5339288e69f41c3950b8b3d2";
    sha256 = "sha256-/mRJCa54rhk0LhWGiFervGSBwLumwIFa/pSFiEafyWk=";
  };
  "git+https://github.com/vitasdk/vita-toolchain.git#recursive" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "vita-toolchain";
    rev = "61a943c67da5008b100bdcabff812ecd7816425d";
    sha256 = "sha256-cznOac5kNg8P/VGumiLzp4QDDbFT0VWZop/AznLRjOs=";
    fetchSubmodules = true;
  };
  "git+https://github.com/xerpi/libftpvita.git" = fetchFromGitHub {
    owner = "xerpi";
    repo = "libftpvita";
    rev = "77a1d39c1d6f11a55fe65a6ed9fe707bff5ede4b";
    sha256 = "sha256-n3PTpD4bcRhfnTM8Wb7xP1YqBaZJpV0YHkCpIHPo0nw=";
  };
  "git+https://github.com/xerpi/libvita2d.git" = fetchFromGitHub {
    owner = "xerpi";
    repo = "libvita2d";
    rev = "a8f15ab09d5233f0a4e4ad0e8f6ade0da888cbed";
    sha256 = "sha256-kSTR7OVaaLNF7cvMAJ7c50WKJFJ7ve5FSGNdx3Ai+GU=";
  };
  "git+https://github.com/xerpi/vita-libbaremetal.git" = fetchFromGitHub {
    owner = "xerpi";
    repo = "vita-libbaremetal";
    rev = "656a53761f019acbb5046034e82f4038cadafced";
    sha256 = "sha256-5qcpB6+2M9UVewlHmMloQSqMguqXMAqfv1CounKPA0A=";
  };
  "git+https://gitlab.xiph.org/xiph/tremor.git#commit=89a7534bf2e70112e0354452b17a78675ca92dbf" = fetchgit {
    url = "https://gitlab.xiph.org/xiph/tremor";
    rev = "89a7534bf2e70112e0354452b17a78675ca92dbf";
    sha256 = "sha256-LR5EahRH8BK5vCYvc/HOBb6HPnvTg7L5JwT79AU+qeI=";
  };
  "http://ftp.gnu.org/gnu/gcc/gcc-10.3.0/gcc-10.3.0.tar.xz" = fetchurl {
    url = "http://ftp.gnu.org/gnu/gcc/gcc-10.3.0/gcc-10.3.0.tar.xz";
    sha256 = "64f404c1a650f27fc33da242e1f2df54952e3963a49e06e73f6940f3223ac344";
  };
  "http://ftp.gnu.org/gnu/mpfr/mpfr-4.0.2.tar.bz2" = fetchurl {
    url = "http://ftp.gnu.org/gnu/mpfr/mpfr-4.0.2.tar.bz2";
    sha256 = "c05e3f02d09e0e9019384cdd58e0f19c64e6db1fd6f5ecf77b4b1c61ca253acc";
  };
  "http://pyyaml.org/download/libyaml/yaml-0.2.2.tar.gz" = fetchurl {
    url = "http://pyyaml.org/download/libyaml/yaml-0.2.2.tar.gz";
    sha256 = "4a9100ab61047fd9bd395bcef3ce5403365cafd55c1e0d0299cde14958e47be9";
  };
  "https://ftp.gnu.org/gnu/binutils/binutils-2.34.tar.xz" = fetchurl {
    url = "https://ftp.gnu.org/gnu/binutils/binutils-2.34.tar.xz";
    sha256 = "f00b0e8803dc9bab1e2165bd568528135be734df3fabf8d0161828cd56028952";
  };
  "https://ftp.gnu.org/gnu/gdb/gdb-9.2.tar.xz" = fetchurl {
    url = "https://ftp.gnu.org/gnu/gdb/gdb-9.2.tar.xz";
    sha256 = "360cd7ae79b776988e89d8f9a01c985d0b1fa21c767a4295e5f88cb49175c555";
  };
  "https://ftp.gnu.org/gnu/gmp/gmp-6.1.2.tar.bz2" = fetchurl {
    url = "https://ftp.gnu.org/gnu/gmp/gmp-6.1.2.tar.bz2";
    sha256 = "5275bb04f4863a13516b2f39392ac5e272f5e1bb8057b18aec1c9b79d73d8fb2";
  };
  "https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz" = fetchurl {
    url = "https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz";
    sha256 = "6985c538143c1208dcb1ac42cedad6ff52e267b47e5f970183a3e75125b43c2e";
  };
  "https://github.com/SonicMastr/LuaJIT-Vita/archive/c329ddd10691c1875f26087ba23c2ae278515e24.tar.gz" = fetchurl {
    url = "https://github.com/SonicMastr/LuaJIT-Vita/archive/c329ddd10691c1875f26087ba23c2ae278515e24.tar.gz";
    sha256 = "936c7426ff21f4e50a827fba40f478f6cb2ffc9e30bea1eeb8471d1166b2a975";
  };
  "https://github.com/erincatto/box2d/archive/refs/tags/v2.4.1.tar.gz" = fetchurl {
    url = "https://github.com/erincatto/box2d/archive/refs/tags/v2.4.1.tar.gz";
    sha256 = "d6b4650ff897ee1ead27cf77a5933ea197cbeef6705638dd181adc2e816b23c2";
  };
  "https://github.com/isage/physfs/raw/master/physfs-3.0.2-vita-3.patch" = fetchurl {
    url = "https://github.com/isage/physfs/raw/master/physfs-3.0.2-vita-3.patch";
    sha256 = "7517d9133dd23228ab28d4b151f4202347ae399cb9332db90c767a06e72c2dca";
  };
  "https://github.com/jarikomppa/soloud/archive/7b6cb7185d12b0d3283a9bf30e6cc3295e57a77c.zip" = fetchurl {
    url = "https://github.com/jarikomppa/soloud/archive/7b6cb7185d12b0d3283a9bf30e6cc3295e57a77c.zip";
    sha256 = "324cfa200e847341c0b07b6fac4f320f09515ce2e44a915a430868a11ced3127";
  };
  "https://github.com/libexpat/libexpat/releases/download/R_2_3_0/expat-2.3.0.tar.bz2" = fetchurl {
    url = "https://github.com/libexpat/libexpat/releases/download/R_2_3_0/expat-2.3.0.tar.bz2";
    sha256 = "f122a20eada303f904d5e0513326c5b821248f2d4d2afbf5c6f1339e511c0586";
  };
  "https://github.com/libsdl-org/SDL/archive/15ead9a40d09a1eb9972215cceac2bf29c9b77f6.tar.gz" = fetchurl {
    url = "https://github.com/libsdl-org/SDL/archive/15ead9a40d09a1eb9972215cceac2bf29c9b77f6.tar.gz";
    sha256 = "01ef30262393a538c89b7a4b007dcb9b44d5dfae53e38be2ef8daac3e9113373";
  };
  "https://github.com/libsdl-org/SDL_net/archive/283e95e3460e8caca7ffacef4b94d82a80e8700f.tar.gz" = fetchurl {
    url = "https://github.com/libsdl-org/SDL_net/archive/283e95e3460e8caca7ffacef4b94d82a80e8700f.tar.gz";
    sha256 = "92972bd02b2f626dc55aa0f8d44df54515858cec7e7f1d74592cb12bbdbafb05";
  };
  "https://github.com/libsdl-org/SDL_ttf/archive/eba26b54b5ce7f1c99a75a116c4719a432354f90.zip" = fetchurl {
    url = "https://github.com/libsdl-org/SDL_ttf/archive/eba26b54b5ce7f1c99a75a116c4719a432354f90.zip";
    sha256 = "8d39a92451a269ec3f52ca35f564a03e0adb0a66f6f666945f59ea4d5485c8d9";
  };
  "https://github.com/vitasdk/artifacts/releases/download/libelf-0.8.13/libelf-0.8.13.tar.gz" = fetchurl {
    url = "https://github.com/vitasdk/artifacts/releases/download/libelf-0.8.13/libelf-0.8.13.tar.gz";
    sha256 = "591a9b4ec81c1f2042a97aa60564e0cb79d041c52faa7416acb38bc95bd2c76d";
  };
  "https://raw.githubusercontent.com/isage/openal-soft/master/openal-soft-1.19.1-vita-1.patch" = fetchurl {
    url = "https://raw.githubusercontent.com/isage/openal-soft/master/openal-soft-1.19.1-vita-1.patch";
    sha256 = "4bee4f8da13e740728ff3b3bb0d0db744148c52c969a706e4cdf42b66d8357a5";
  };
  "https://www.zlib.net/fossils/zlib-1.2.13.tar.gz" = fetchurl {
    url = "https://www.zlib.net/fossils/zlib-1.2.13.tar.gz";
    sha256 = "b3a24de97a8fdbc835b9833169501030b8977031bcb54b3b3ac13740f846ab30";
  };
  "svn://svn.code.sf.net/p/lame/svn/trunk/lame#revision=r6403" = fetchsvn {
    url = "svn://svn.code.sf.net/p/lame/svn/trunk/lame";
    rev = "r6403";
    sha256 = "0dws7012ngd4z99a8wd9nwbjcnvgv4vf67i7g631clhgjhs9vybq";
  };
}
