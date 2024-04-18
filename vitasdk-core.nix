{ pkgs ? import<nixpkgs>{},
  lockfile ? import ./vitasdk-package-lock.nix { inherit pkgs; },
  core-inputs ? import ./vitasdk-core-inputs.nix }:

with pkgs;
with core-inputs;

stdenv.mkDerivation rec {
  name = "vitasdk";
  src = lockfile."${core-inputs.src}";
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
      if [[ "$3" == 0 ]]; then (
        cd $1-prefix/src/$1
        git init
        git add .
        git config user.name stub
        git config user.email stub@example.org
        GIT_COMMITTER_DATE='Jan 1 00:00:00 1970 +0000' git commit -m 123 --date 'Jan 1 00:00:00 1970 +0000'
        git remote add origin "file:///$PWD"
        git fetch origin
      ); fi
    }
    ${lib.concatMapStrings (i: "copySubproject ${i.path} ${lockfile."${i.object}"} ${({ rmgit = "0"; } // i).rmgit}\n") subprojects}
    ( cd isl_build-prefix/src/isl_build; git branch isl-0.21; )
    ( cd newlib-prefix/src/newlib; git checkout -b vita; git fetch origin; )
    mkdir -p downloads
    ${lib.concatMapStrings (i: "cp ${lockfile."${i}"} downloads/${let arr=builtins.split "/" i; in builtins.elemAt arr ((builtins.length arr)-1)}\n") tarballs}
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
