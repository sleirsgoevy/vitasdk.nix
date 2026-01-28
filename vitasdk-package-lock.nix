{ pkgs ? import<nixpkgs>{} }:

with pkgs;

{
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
    rev = "a6cc4ade66710ec799ca41297f6d2c2b4070d0ff";
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
    rev = "054c4050f2f9f229fe90b102d076f7ad97dcbce4";
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
    rev = "d4dd4999ca74e444d9cad8850e5dbda9efc49351";
    sha256 = "sha256-3HBBDg3s75dQ+edN4juwFgXRgzoXL6jsiRzxkAEaeDo=";
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
    rev = "8e4de0af4559f405dcc70f529344367be6c98358";
    sha256 = "sha256-cWkp/8C0hFM+0+u/d6KzN9EtaY6Z3EuHaYQ1Aby3W28=";
  };
  "git+https://github.com/Rinnegatamante/vitaGL.git" = fetchFromGitHub {
    owner = "Rinnegatamante";
    repo = "vitaGL";
    rev = "33069a4514703f1cca55b191bb2cf2d2eaaad9aa";
    sha256 = "sha256-v1g0DAIZno2dO9dgqBIMrAXmx22s4KQ/tzDph1WJz4o=";
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
  "git+https://github.com/bucanero/libun7zip.git#commit=e2a195d2767d64c9c52ab0bd147ebb52124066ef" = fetchFromGitHub {
    owner = "bucanero";
    repo = "libun7zip";
    rev = "e2a195d2767d64c9c52ab0bd147ebb52124066ef";
    sha256 = "sha256-W16RWFYF+WBBjiDDhPzxQGsSorwx82fV5HkVMyVAz7c=";
  };
  "git+https://github.com/bucanero/mini18n#commit=1850682c1e56e93d04b0f352946c01dab475f88a" = fetchFromGitHub {
    owner = "bucanero";
    repo = "mini18n";
    rev = "1850682c1e56e93d04b0f352946c01dab475f88a";
    sha256 = "sha256-5xYNt6c6gQ+urYcfzqmiMjQZ8kg35IvH7EcimWObiZo=";
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
    rev = "218a44b390b7d0e20e87e16a3b53c0176cd68b0e";
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
  "git+https://github.com/divideconcept/FluidLite.git#commit=4a01cf1c67419e71da971d209f2855bbf4f3bab8" = fetchFromGitHub {
    owner = "divideconcept";
    repo = "FluidLite";
    rev = "4a01cf1c67419e71da971d209f2855bbf4f3bab8";
    sha256 = "sha256-Xw5YhNVLZR22iAmbsyomFArYohSTUxaAqsjhfWB8x/w=";
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
    rev = "89ff142b991af432b5d7a7cee55282f082a7e629";
    sha256 = "sha256-GfXRWIp5N2ZPeYEe038MIdEiNC8WuKo3ITC5rewQl1w=";
  };
  "git+https://github.com/lecram/gifdec.git" = fetchFromGitHub {
    owner = "lecram";
    repo = "gifdec";
    rev = "1dcbae19363597314f6623010cc80abad4e47f7c";
    sha256 = "sha256-IBtpr+RRkbnHDfi1R3JgGbg7A2+C92/LRcufFmNGf5I=";
  };
  "git+https://github.com/libsndfile/libsamplerate.git#commit=2ccde9568cca73c7b32c97fefca2e418c16ae5e3" = fetchFromGitHub {
    owner = "libsndfile";
    repo = "libsamplerate";
    rev = "2ccde9568cca73c7b32c97fefca2e418c16ae5e3";
    sha256 = "sha256-GmgfmdrawAK8ktKtMgHMnzD2p80e373YNYlGg1edF/Q=";
  };
  "git+https://github.com/pnggroup/libpng.git#tag=v1.6.54" = fetchFromGitHub {
    owner = "pnggroup";
    repo = "libpng";
    rev = "02f2b4f4699f0ef9111a6534f093b53732df4452";
    sha256 = "sha256-SWvZsQ2Cd50ywTWA7ePSxyd4ex6y1Z48XnDqI1kkW48=";
  };
  "git+https://github.com/psxdev/debugnet.git" = fetchFromGitHub {
    owner = "psxdev";
    repo = "debugnet";
    rev = "26787fce84582daa8f0c34726a5ca4aef0c6a5b8";
    sha256 = "sha256-nMBYeaR2oxQkKL33VlvFtxEt5NCxy1q+8oavsJo4Ufw=";
  };
  "git+https://github.com/sezero/mikmod.git#commit=6b9bab2460052156de6a2a847fd14e51b187061a" = fetchFromGitHub {
    owner = "sezero";
    repo = "mikmod";
    rev = "6b9bab2460052156de6a2a847fd14e51b187061a";
    sha256 = "sha256-Ru/9jv41ax9UzyyTTzyx5LHWHGwocOcrlz8G+CKriy0=";
  };
  "git+https://github.com/sleirsgoevy/vita-uvdb.git#tag=v0.1" = fetchFromGitHub {
    owner = "sleirsgoevy";
    repo = "vita-uvdb";
    rev = "19b46837d59498b0bc6ddc193a9ab1c03932be84";
    sha256 = "sha256-bBAB0mCdFoa/IgR6KvxDXSxnhKsm4qQKb7RevApWIDk=";
  };
  "git+https://github.com/v-atamanenko/vita-libdl.git#commit=bad0b43b7c018178dba8c059df3f9d9bd5ec742d" = fetchFromGitHub {
    owner = "v-atamanenko";
    repo = "vita-libdl";
    rev = "bad0b43b7c018178dba8c059df3f9d9bd5ec742d";
    sha256 = "sha256-UsWIVz8//2Ilc8S9XbCFwEs3d6Vr92fioETMViBGeNg=";
  };
  "git+https://github.com/vitasdk-softfp/packages.git" = fetchFromGitHub {
    owner = "vitasdk-softfp";
    repo = "packages";
    rev = "f7302ae517b3d8d3c2fd9ece9cb9ec231155a653";
    sha256 = "sha256-f/L+OG3OkyetFXS0w4lWF96lfPrb6AmpsRhEuQIQMzE=";
  };
  "git+https://github.com/vitasdk/buildscripts" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "buildscripts";
    rev = "3fafe2b5b6318a72764b686ca3b93668d5271804";
    sha256 = "sha256-bp/7HQkgnHcij11752asSBxW/O0Zk8J74WwCpHm3BIA=";
  };
  "git+https://github.com/vitasdk/libzip.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "libzip";
    rev = "75da60011b125e3a7e2509292a7217e58d72f9c8";
    sha256 = "sha256-nNdR8LGp0cy1Q3jX+atk45O+3SJb+VN0/7JRS0/w89g=";
  };
  "git+https://github.com/vitasdk/newlib.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "newlib";
    rev = "0da3cb1dbdb85932c65b2a0f628364ce0124ea01";
    sha256 = "sha256-LrI3w9FQFzlJvzxstaRzp/UXaKVD13obkdzL1/Bat54=";
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
    rev = "2ec8ca811b782ddc472d0f18d93c929030df4520";
    sha256 = "sha256-SMPI/lkY6+BLd1ykQBfGLsEBJ+IcvsLP4gZSd0s+x4U=";
  };
  "git+https://github.com/vitasdk/vdpm.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "vdpm";
    rev = "e423be457622a9ba517858f4831566dcd263729a";
    sha256 = "sha256-ubSvK8RIDPK96nO4HqyYJdMu40+x8NKb/FAWQttVAcc=";
  };
  "git+https://github.com/vitasdk/vita-headers.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "vita-headers";
    rev = "cfd50af234fddc648a0ed9805e1c8188ce0463b9";
    sha256 = "sha256-s8ThSIXieVv0I7wCDt1sp1RK7IZn+ZyzqbM91ei4GR4=";
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
    rev = "71f3789342f610a4eb3ba50fc33292c4900c6666";
    sha256 = "sha256-YzO0abJdo+AFmywFkvtmxF4gQarkPUp7trM41uPsqas=";
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
    rev = "956b8c585591b401a543e409accb163eeaaa1193";
    sha256 = "sha256-/nHyick3/K5/xFxsEuQTjZDeZ/Un+UsiW9S+9fKvtzw=";
  };
  "git+https://github.com/zaphoyd/websocketpp.git#commit=4dfe1be74e684acca19ac1cf96cce0df9eac2a2d" = fetchFromGitHub {
    owner = "zaphoyd";
    repo = "websocketpp";
    rev = "4dfe1be74e684acca19ac1cf96cce0df9eac2a2d";
    sha256 = "sha256-kxKhSDLWeSbyj553gm9WU1lxXinCxBIe+yOGTelPUL8=";
  };
  "git+https://gitlab.xiph.org/xiph/tremor.git#commit=89a7534bf2e70112e0354452b17a78675ca92dbf" = fetchgit {
    url = "https://gitlab.xiph.org/xiph/tremor";
    rev = "89a7534bf2e70112e0354452b17a78675ca92dbf";
    sha256 = "sha256-LR5EahRH8BK5vCYvc/HOBb6HPnvTg7L5JwT79AU+qeI=";
  };
  "git+https://gitlab.xiph.org/xiph/vorbis.git#commit=2d79800b6751dddd4b8b4ad50832faa5ae2a00d9" = fetchgit {
    url = "https://gitlab.xiph.org/xiph/vorbis";
    rev = "2d79800b6751dddd4b8b4ad50832faa5ae2a00d9";
    sha256 = "sha256-zpV37LIq571Z0li+Prqu3Zcb0I4Y4iLC8u58udadNnE=";
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
  "https://download.gnome.org/sources/libxml2/2.15/libxml2-2.15.1.tar.xz" = fetchurl {
    url = "https://download.gnome.org/sources/libxml2/2.15/libxml2-2.15.1.tar.xz";
    sha256 = "c008bac08fd5c7b4a87f7b8a71f283fa581d80d80ff8d2efd3b26224c39bc54c";
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
  "https://github.com/Northfear/SDL/archive/refs/heads/vitagl.tar.gz" = fetchurl {
    url = "https://github.com/Northfear/SDL/archive/refs/heads/vitagl.tar.gz";
    sha256 = "81b3c254f68111896ecfae544f5cb4b88e54864e683a69444bec30ddd106f4be";
  };
  "https://github.com/SonicMastr/LuaJIT-Vita/archive/c329ddd10691c1875f26087ba23c2ae278515e24.tar.gz" = fetchurl {
    url = "https://github.com/SonicMastr/LuaJIT-Vita/archive/c329ddd10691c1875f26087ba23c2ae278515e24.tar.gz";
    sha256 = "936c7426ff21f4e50a827fba40f478f6cb2ffc9e30bea1eeb8471d1166b2a975";
  };
  "https://github.com/isage/physfs/raw/master/physfs-3.0.2-vita-3.patch" = fetchurl {
    url = "https://github.com/isage/physfs/raw/master/physfs-3.0.2-vita-3.patch";
    sha256 = "4cc61a50d98071e1ad0c10a3cc7868a47e743d473c2fd437fedcad81d4a12444";
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
    sha256 = "a31ebc39966298e31d2d77d43e9ac4352bd1b0a0f6d9f0f0e372a849bca349bf";
  };
  "https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.6.3.tar.gz" = fetchurl {
    url = "https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.6.3.tar.gz";
    sha256 = "931c9be5bf1d7c8fae9b7dc157828b7eee874e23c7f24b44ba7eff6b4836312c";
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
  "git+https://github.com/vitasdk/packages.git" = fetchFromGitHub {
    owner = "vitasdk";
    repo = "packages";
    rev = "72f9922123431b533f543f44345384c7e33147eb";
    sha256 = "sha256-VFG3/oDQsVd4iDBX3P3Rk8GBakUthAOY+J0JhclR1Hc=";
  };
}
