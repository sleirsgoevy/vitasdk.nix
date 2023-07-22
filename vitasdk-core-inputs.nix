{
  subprojects = [
    { path = "vita-makepkg"; rmgit = "0"; object = "git+https://github.com/vitasdk/vita-makepkg.git"; }
    { path = "vdpm"; object = "git+https://github.com/vitasdk/vdpm.git"; }
    { path = "samples"; object = "git+https://github.com/vitasdk/samples.git"; }
    { path = "isl_build"; rmgit = "0"; object = "git+https://github.com/Meinersbur/isl.git#tag=isl-0.21"; }
    { path = "libzip_build"; object = "git+https://github.com/vitasdk/libzip.git"; }
    { path = "vita-toolchain_build"; object = "git+https://github.com/vitasdk/vita-toolchain.git#recursive"; }
    { path = "vita-headers"; object = "git+https://github.com/vitasdk/vita-headers.git"; }
    { path = "newlib"; object = "git+https://github.com/vitasdk/newlib.git"; }
    { path = "pthread-embedded"; object = "git+https://github.com/vitasdk/pthread-embedded.git"; }
  ];
  tarballs = [
    "https://ftp.gnu.org/gnu/gmp/gmp-6.1.2.tar.bz2"
    "https://ftp.gnu.org/gnu/binutils/binutils-2.34.tar.xz"
    "https://zlib.net/zlib-1.2.13.tar.xz"
    "https://github.com/vitasdk/artifacts/releases/download/libelf-0.8.13/libelf-0.8.13.tar.gz"
    "https://ftp.gnu.org/gnu/gdb/gdb-9.2.tar.xz"
    "http://pyyaml.org/download/libyaml/yaml-0.2.2.tar.gz"
    "https://github.com/libexpat/libexpat/releases/download/R_2_3_0/expat-2.3.0.tar.bz2"
    "http://ftp.gnu.org/gnu/mpfr/mpfr-4.0.2.tar.bz2"
    "https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz"
    "http://ftp.gnu.org/gnu/gcc/gcc-10.3.0/gcc-10.3.0.tar.xz"
  ];
  src = "git+https://github.com/vitasdk/buildscripts";
}
