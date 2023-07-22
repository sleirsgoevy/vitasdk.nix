{ pkgs ? import<nixpkgs>{} }:

with pkgs;

let
  subprojects = [
    {
      owner = "vitasdk";
      repo = "vita-makepkg";
      rev = "0c7da211ef88d7dc5339288e69f41c3950b8b3d2";
      sha256 = "0sf9kx38i1clzrd83h56pg082r5wmdbqi1hm5qs1kbkqmq4ljr7y";
      #rev = "546c21ba15d208ee00077ba22c4795a02664f0ec";
      #sha256 = "0j28fzy2yg80y96sqi4v7wkh6a1rk0ji7vddj2x46pzpdfnkc0b1";
      rmgit = "0";
    }
    {
      owner = "vitasdk";
      repo = "vdpm";
      rev = "bd3e4ae9b7db35c3b895c68dc56ca2c87335edb8";
      sha256 = "1d0ynwsq6vxxl7ar78wslkdv4c1y1l5q7dw6nlhrrk6bpaahxzk5";
      #rev = "43188164a2d8ee6cb75997484521a244ef69288b";
      #sha256 = "0ffrczzy93h4rys55w3pw7kxgjkzxyrfmkz9mik3zi7qjp08d5f2";
      rmgit = "0";
    }
    {
      owner = "vitasdk";
      repo = "samples";
      rev = "a4bd64274263e7edbb284f09940817d1cad464bf";
      sha256 = "0jxm4w1z8wwb3p0bg5sz17s92fr746blv5jqd3vypxvfmd6gp2m1";
      #rev = "d850517b1812a87e5159233764cddb6d837b2c7f";
      #sha256 = "1vchn7y8jlqz86zxjm3vip47b3z9pq63455gn4h503da9ch0vl2q";
      rmgit = "0";
    }
    {
      owner = "Meinersbur";
      repo = "isl";
      rev = "isl-0.21";
      sha256 = "07xvqxnxzz19pgg044ng33wjzg3xj7jalgkvkj4zladprb4qa93s";
      rmgit = "0";
      path = "isl_build";
    }
    {
      owner = "vitasdk";
      repo = "libzip";
      rev = "33fb70457b5dc6a6c95387b0b12d873696419878";
      sha256 = "1rgvqsnq403afxin6sn0b0mfxw1grzi4mk9wmca3kfn3wb5mlxc0";
      rmgit = "0";
      path = "libzip_build";
    }
    {
      owner = "vitasdk";
      repo = "vita-toolchain";
      rev = "269902866d699f10eb6963895371226146700593";
      submodules = "1";
      sha256 = "0ibc5mlvi9cgl84nmdrqp4m6a4hyasz38sy2y02ljrg9h87z6ijy";
      #rev = "30b4316d2c16e862b53531251bcdd7c40257a9e6";
      #sha256 = "146sivj4j75zq2smyr6daa5zdqp3jvxg0hvsbzdjyjq3kc8kn5fw";
      rmgit = "0";
      path = "vita-toolchain_build";
    }
    {
      owner = "vitasdk";
      repo = "vita-headers";
      rev = "6863c650546bf6347a0f9a367cd9a396f74214ff";
      sha256 = "1dclxi7c42g9150c62f9rnpz1r4cdhd50x2qflfip1lj7v6q3n8g";
      #rev = "585b3ef8a05b90a1f7d32a32e838d4dc36fd8082";
      #sha256 = "17n6f75019g0bzmw4iyyp0a1w0vym9x77xn935n93nkrjrddq9y2";
      rmgit = "0";
    }
    {
      owner = "vitasdk";
      repo = "newlib";
      rev = "65eb695a322084cc06ed86b912dce58c61d960c3";
      sha256 = "1l5wja7wvillb5rv9gmhdj7b9jv3wg330dg2a5jsa3b5n3j5lyq0";
      #rev = "9c468e7d9401868c2ab363734ad386557f9b56b1";
      #sha256 = "0gz99x16p3v7rw1kbqhhsnw5ngmra07qkk9cvmska5v015s9304k";
      rmgit = "0";
    }
    {
      owner = "vitasdk";
      repo = "pthread-embedded";
      rev = "63e1cd9152082d9ccb1b38d67a4caf975562fbeb";
      sha256 = "1zq2cyj5x41n0gqdvzjlqwajplm8c3yxzyhj4mism2lz659cvwxj";
      #rev = "18f240ecd8eed0f9e0b6bdca91143c6ce2d4a358";
      #sha256 = "15w65jgwly0p2zbzk4drl5x3mj5yhqdcgbkf98jm2773lkmxmr2c";
      rmgit = "0";
    }
  ];
  tarballs = [
    {
      url = "https://ftp.gnu.org/gnu/gmp/gmp-6.1.2.tar.bz2";
      sha256 = "1clg7pbpk6qwxj5b2mw0pghzawp2qlm3jf9gdd8i6fl6yh2bnxaj";
    }
    {
      url = "https://ftp.gnu.org/gnu/binutils/binutils-2.34.tar.xz";
      sha256 = "0ll909bcsa0q2v8giarzvwsffnqk522mdgb544gap6yw0f40w2zh";
    }
    {
      url = "https://zlib.net/zlib-1.2.13.tar.xz";
      sha256 = "167v0w0m980xlcq0cjqmbl7yll9g0hkdznk0hyd5mhxg2gikhk6i";
    }
    {
      url = "https://github.com/vitasdk/artifacts/releases/download/libelf-0.8.13/libelf-0.8.13.tar.gz";
      sha256 = "0vf7s9dwk2xkmhb79aigqm0x0yfbw1j0b9ksm51207qwr179n6jr";
    }
    {
      url = "https://ftp.gnu.org/gnu/gdb/gdb-9.2.tar.xz";
      sha256 = "0mf5fn8v937qwnal4ykn3ji1y2sxk0fa1yfqi679hxmpg6pdf31n";
    }
    {
      url = "http://pyyaml.org/download/libyaml/yaml-0.2.2.tar.gz";
      sha256 = "1sbvwic4kqfdk410s7jwsnpmqdh3ak7g7kjv76yxjzq4c6mh14aa";
    }
    {
      url = "https://github.com/libexpat/libexpat/releases/download/R_2_3_0/expat-2.3.0.tar.bz2";
      sha256 = "11h53i8rwcziqvsznajd5n7j88dqqlk36lg0sl2gj0x3ml7a48pi";
    }
    {
      url = "http://ftp.gnu.org/gnu/mpfr/mpfr-4.0.2.tar.bz2";
      sha256 = "1k1s4p56272bggvyrxfn3zdycr4wy7h5ipac70cr03lys013ypn0";
    }
    {
      url = "https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz";
      sha256 = "0biwnhjm3rx3hc0rfpvyniky4lpzsvdcwhmcn7f0h4iw2hwcb1b9";
    }
    {
      url = "http://ftp.gnu.org/gnu/gcc/gcc-10.3.0/gcc-10.3.0.tar.xz";
      sha256 = "0i6378ig6h397zkhd7m4ccwjx5alvzrf2hm27p1pzwjhlv0h9x34";
    }
  ];
in stdenv.mkDerivation rec {
  name = "vitasdk";
  src = fetchFromGitHub {
    owner = "vitasdk";
    repo = "buildscripts";
    rev = "5f970b5f6976eadeed2aff6355a9123c1158cc04";
    sha256 = "0vyw9khcw71sd6szknnlynp506gqzndhss7ws5wvkbhdzxfa685z";
    #rev = "47df3b0bd93fce21e7febaf620b582616e0394c2";
    #sha256 = "0nbsxfffz31zd6aa9ri3i85fybagrzn7mkvpiybl9mml6y2i676f";
  };
  nativeBuildInputs = [ cmake flex bison git autoconf automake texinfo perl libtool pkg-config pypy2 makeWrapper ];
  configurePhase = "mkdir build; cd build; cmake .. $configureFlags";
  configureFlags = [ "-DOFFLINE=ON" ];
  preBuild = ''
    copySubproject ()
    {
      mkdir -p $1-prefix/src/$1 $1-prefix/src/$1-stamp
      rmdir $1-prefix/src/$1 || true
      cp -r "$2" $1-prefix/src/$1
      chmod -R +w $1-prefix/src/$1
      touch $1-prefix/src/$1-stamp/$1-gitclone-lastrun.txt
      if [[ "$3" == 0 ]]; then ( cd $1-prefix/src/$1; git init; git add .; git config user.name stub; git config user.email stub@example.org; git commit -m 123; ); fi
    }
    ${lib.concatMapStrings (i: "copySubproject ${({ path = i.repo; } // i).path} ${fetchFromGitHub (with i; { inherit owner repo rev sha256; fetchSubmodules = ({ submodules = "0"; } // i).submodules == "1"; })} ${i.rmgit}\n") subprojects}
    ( cd isl_build-prefix/src/isl_build; git remote add origin "file://$PWD"; git branch isl-0.21; )
    ( cd libzip_build-prefix/src/libzip_build; git remote add origin "file://$PWD"; )
    ( cd vita-toolchain_build-prefix/src/vita-toolchain_build; git remote add origin "file://$PWD"; )
    mkdir -p downloads
    ${lib.concatMapStrings (i: "cp ${fetchurl i} downloads/${let arr=builtins.split "/" i.url; in builtins.elemAt arr ((builtins.length arr)-1)}\n") tarballs}
    sed -i 's #!.* #!${bash}/bin/bash ' ../command_wrapper.sh
    sed -i 's /usr/bin/curl ${curl}/bin/curl ' vita-makepkg-prefix/src/vita-makepkg/makepkg.conf.sample
    sed -i 's /usr/bin/rsync ${rsync}/bin/rsync ' vita-makepkg-prefix/src/vita-makepkg/makepkg.conf.sample
    sed -i 's /usr/bin/scp ${openssh}/bin/scp ' vita-makepkg-prefix/src/vita-makepkg/makepkg.conf.sample
  '';
  installPhase = ''
    cp -r vitasdk $out
    rm $out/bin/vdpm
    sed -i 's:export PKG_CONFIG_LIBDIR=.*:\0$VITASDK_PKG_CONFIG_EXTRA_PATHS:' $out/bin/arm-vita-eabi-pkg-config
    wrapProgram $out/bin/arm-vita-eabi-pkg-config --prefix PATH : ${pkg-config-unwrapped}/bin --set-default VITASDK $out
    for prog in gcc g++; do
    mv $out/bin/arm-vita-eabi-$prog $out/bin/.arm-vita-eabi-$prog-wrapped
    cat > $out/bin/arm-vita-eabi-$prog << EOF
    #!${bash}/bin/bash

    exec -a arm-vita-eabi-$prog $out/bin/.arm-vita-eabi-$prog-wrapped \$VITASDK_EXTRA_CFLAGS "\$@"
    EOF
    chmod +x $out/bin/arm-vita-eabi-$prog
    done
    mkdir -p $out/nix-support
    cat > $out/nix-support/setup-hook << EOF
    export VITASDK="$out"
    EOF
  '';
  enableParallelBuilding = true;
  NIX_CFLAGS_COMPILE = "-Wno-format-security";
  NIX_CXXFLAGS_COMPILE = NIX_CFLAGS_COMPILE;
}
