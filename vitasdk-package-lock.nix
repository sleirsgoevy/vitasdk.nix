{ pkgs ? import<nixpkgs>{} }:

with pkgs;

{
  "git+https://git.code.sf.net/p/libpng/code#tag=v1.6.43" = fetchgit {
    url = "https://git.code.sf.net/p/libpng/code";
    rev = "8e6e5eed16748387094c4919711c7c287e0aec89";
    sha256 = "sha256-Mo1M8TuVaoSIb7Hy2u6zgjZ1DKgpmgNmGRP6dGg/aTs=";
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
    rev = "dc39ce92d74b56c604b3a42e11fdc566eb0ed8f4";
    sha256 = "sha256-kXqZRMvggMrtPHUkQUN/MulN2EgsOOsl5lla+d8pWoU=";
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
    rev = "92b14017a62ad691c905bb1c14cc19c03dce8f15";
    sha256 = "sha256-CC2Z6IFGa0VVgVEvY/WRc2XAhSz7O7Tgf1q9qS2bFDk=";
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
    sha256 = "sha256-hu5L3a5OklAMDxvv5Ghr5Qgvn5UJ6gd7me0YTP91zBc=";
  };
  "git+https://github.com/SonicMastr/cpython-vita.git#branch=3.11" = fetchFromGitHub {
    owner = "SonicMastr";
    repo = "cpython-vita";
    rev = "fa69d3fb79272d8257fb0fb4a89c87a9cd716ee7";
    sha256 = "sha256-B54l2Xj7TJ45WfoRdJ2oLcwLPqMHg9ANUSzbJM1v7xw=";
  };
  "git+https://github.com/SonicMastr/vita-openssl3.git#branch=OpenSSL_1_1_1-vita" = fetchFromGitHub {
    owner = "SonicMastr";
    repo = "vita-openssl3";
    rev = "0a851f7911a89ad82f0f3ada54939bb12acdd476";
    sha256 = "sha256-w5gGSAHuuojm4YZOTspDkZaDrCGX4RTMcUUyxjIDCPk=";
  };
  "git+https://github.com/bucanero/libun7zip.git#commit=9c487ddbc7f684f7b424384ed3eb5e45a922e74f" = fetchFromGitHub {
    owner = "bucanero";
    repo = "libun7zip";
    rev = "9c487ddbc7f684f7b424384ed3eb5e45a922e74f";
    sha256 = "sha256-qzf9ZkZ7NP4cRYK0+sEgjVd/weNHYk7F/+mkbpn8uDg=";
  };
  "git+https://github.com/bythos14/kubridge.git#commit=a4ef20fc3ab07b493f9d7d67703272831e445e21" = fetchFromGitHub {
    owner = "bythos14";
    repo = "kubridge";
    rev = "a4ef20fc3ab07b493f9d7d67703272831e445e21";
    sha256 = "sha256-cWBQI+zUoi7n+kZuPoQRh3gTe7zpQSwqwPlBd7A+0pc=";
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
    rev = "2f86d13775d119edbb69af52e5f566fd65c6953b";
    sha256 = "sha256-GtUTbEaRR3+GfVkt3t8EsqBHVffVKOl8urtQTaHozIo=";
  };
  "git+https://github.com/lecram/gifdec.git" = fetchFromGitHub {
    owner = "lecram";
    repo = "gifdec";
    rev = "1dcbae19363597314f6623010cc80abad4e47f7c";
    sha256 = "sha256-IBtpr+RRkbnHDfi1R3JgGbg7A2+C92/LRcufFmNGf5I=";
  };
  "git+https://github.com/libjpeg-turbo/libjpeg-turbo#tag=3.0.3" = fetchFromGitHub {
    owner = "libjpeg-turbo";
    repo = "libjpeg-turbo";
    rev = "7fa4b5b762c9a99b46b0b7838f5fd55071b92ea5";
    sha256 = "sha256-w2wJaVf4sjJ9pPPqc9R4TE6Q6Yl0U6+fI5KLpQKwEXI=";
  };
  "git+https://github.com/psxdev/debugnet.git" = fetchFromGitHub {
    owner = "psxdev";
    repo = "debugnet";
    rev = "26787fce84582daa8f0c34726a5ca4aef0c6a5b8";
    sha256 = "sha256-nMBYeaR2oxQkKL33VlvFtxEt5NCxy1q+8oavsJo4Ufw=";
  };
  "git+https://github.com/sahlberg/libsmb2.git#commit=0fba3b28533cbfa64143ae230da8342f3bc45141" = fetchFromGitHub {
    owner = "sahlberg";
    repo = "libsmb2";
    rev = "0fba3b28533cbfa64143ae230da8342f3bc45141";
    sha256 = "sha256-xPA5KlK8Up8DXQPU+k6Wc6NTUgJUIkhh+pwclyp0s40=";
  };
  "git+https://github.com/sleirsgoevy/vita-uvdb.git#tag=v0.1" = fetchFromGitHub {
    owner = "sleirsgoevy";
    repo = "vita-uvdb";
    rev = "19b46837d59498b0bc6ddc193a9ab1c03932be84";
    sha256 = "sha256-bBAB0mCdFoa/IgR6KvxDXSxnhKsm4qQKb7RevApWIDk=";
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
    rev = "09c533b771591ecde88864b6acad28ffb688dbd4";
    sha256 = "sha256-2L4m9CIwd/hVEHsHEJXmWAaimAHR17aD0jT0Ld9Y0YQ=";
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
    rev = "5f6d38c8e77d53be0e36065bbb2527512bf19d5e";
    sha256 = "sha256-sDB7/spLclERScBqcRwqGg718zxg6mO5GiyBZJDmwUs=";
  };
  "git+https://github.com/vitasdk/packages.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "packages";
    rev = "b179ed0a8a8b81d3690ca9dcef6c79a944c30530";
    sha256 = "sha256-SPrSbEDcPO3klbk5xQg87iA0SiTuadLh7JRMtmWfKR0=";
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
    rev = "2cf7451bfec53929bcc727937819078da31d1b9c";
    sha256 = "sha256-umhsp0ANfjX15s+PuM99aEkI+sNOoEwiQrwey1+uON0=";
  };
  "git+https://github.com/vitasdk/vdpm.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "vdpm";
    rev = "426032a2fd05300cf9ef04e5f691f07f642c14cf";
    sha256 = "sha256-VA7ufpaDsxMyeLm0cQChlN7n9I23kFkOVDWKvS1rPak=";
  };
  "git+https://github.com/vitasdk/vita-headers.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "vita-headers";
    rev = "4785be9c88c8087b3c63ca4971515065a3e0d2a2";
    sha256 = "sha256-OSKNv0s6n7OzwPlzqTdatmS7c9g72n1MzGCNqGaBb30=";
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
    rev = "77f17b979678e7af0acfe708dc97a45ca6fd55e2";
    sha256 = "sha256-VTPUTHisHLj6TTHOizVU13P5NYCioT0mLE8zwGqmwR4=";
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
  "git+https://github.com/ytdl-org/youtube-dl" = fetchFromGitHub {
    owner = "ytdl-org";
    repo = "youtube-dl";
    rev = "a084c80f7bac9ae343075a97cc0fb2c1c96ade89";
    sha256 = "sha256-Ksd73heWY0eDv96whvA/SMP2Lziea6hj8N9oh0Kyrc4=";
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
