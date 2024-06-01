{ pkgs ? import<nixpkgs>{} }:

with pkgs;

rec {
  patches.openssl = ''
    patchShebangs --build vita-openssl
    sed -i 's:/bin/bash:${bash}/bin/bash:' VITABUILD
  '';
  deps.openssl = [ perl xorg.makedepend ];

  patches."openssl-1.1.1" = ''
    patchShebangs --build vita-openssl3
    sed -i 's:/bin/bash:${bash}/bin/bash:' VITABUILD
  '';
  deps."openssl-1.1.1" = deps.openssl;

  patches.libimagequant = ''
    patchShebangs --build libimagequant
  '';

  deps.libmikmod = [ texinfo ];

  deps."libsigc++-2.0" = [ m4 ];

  deps.curl = [ perl ];

  deps.libconfig = [ texinfo ];

  propagatedBuildInputs.vitaGL = f: with f; [ vitaShaRK ];

  patches.libvita2d_vgl = ''
    sed -i 's:-I\$(VITASDK)/arm-vita-eabi/include/freetype2'"'"':'"'"'"$(arm-vita-eabi-pkg-config --cflags freetype2)":' VITABUILD
  '';

  patches.icu4c = ''
    sed -i 's:^  make DESTDIR=:  rm $VITASDK\n  ln -s $pkgdir/$VITASDK $VITASDK\n\0:' VITABUILD
  '';

  patches.sdl = ''
    sed -i 's:^  make -f Makefile.vita .*:\0\n  ln -s $VITASDK/arm-vita-eabi/bin $pkgdir/$VITASDK/bin:' VITABUILD
    sed -i 's:^  make -j\$(nproc) -f Makefile.vita:  sed -i "s;/usr/local/vitasdk/;'"$VITASDK"'/;" sdl-config.vita sdl.pc.vita\n  make -f Makefile.vita include/SDL_config.h\n\0:' VITABUILD
  '';

  patches.sdl2 = ''
    sed -i 's:^  make DESTDIR=\$pkgdir install$:\0\n  ln -s $VITASDK/arm-vita-eabi/bin $pkgdir/$VITASDK/bin:' VITABUILD
  '';

  deps.mpg123 = [ autoconf automake pkg-config ];

  # TODO: make luajit build on non-x86 platforms
  patches.luajit = ''
    sed -i "s:HOST_CC='gcc -m32':HOST_CC='${pkgsi686Linux.gcc}/bin/gcc':" VITABUILD
  '';

  propagatedBuildInputs.freetype = f: with f; [ zlib libpng ];

  vitaDeps.cpr = f: with f; [ openssl ];

  # XXX: this applies to both cpython and cpython3 packages due to bad package names
  deps.cpython = [
    python311
    (python27.overrideAttrs (f: { meta = f.meta // { knownVulnerabilities = []; }; }))
    p7zip
  ];
  extraSources.cpython = [ "git+https://github.com/ytdl-org/youtube-dl" ];
  patches.cpython = ''
    sed -i 's:^  sh install_extra_modules.sh \$pkgdir$:  mkdir -p "$pkgdir/$VITASDK/arm-vita-eabi/lib/python2.7"\n  cp -r ../../youtube-dl/youtube_dl "$pkgdir/$VITASDK/arm-vita-eabi/lib/python2.7/":' VITABUILD
    sed -i 's/if not can_merge():$/if os.name == '"'"'vita'"'"' or not can_merge():/' youtube-dl/youtube_dl/YoutubeDL.py
    sed -i '/^\(import ctypes\|    compat_ctypes_WINFUNCTYPE,\)/d' youtube-dl/youtube_dl/utils.py
  '';

  patches.libvpx = ''
    export -f isScript patchShebangs
    sed -i 's:  cd libvpx-\$pkgver:\0\n  patchShebangs --build .:' VITABUILD
  '';
  deps.libvpx = [ perl ];

  patches.libxml2 = ''
    sed -i 's:/usr/local/vitasdk/:$VITASDK/:' VITABUILD
  '';

  vitaDeps.sdl2_mixer_ext = f: with f; [ libogg ];

  propagatedBuildInputs.libvorbis = f: with f; [ libogg ];

  propagatedBuildInputs.opusfile = f: with f; [ opus ];

  propagatedBuildInputs.sdl_ttf = f: with f; [ bzip2 ];

  patches.soloud = ''
    sed -i 's:^  chmod +x genie$:  rm genie\n  ln -s ${stdenv.mkDerivation {
      name = "GENie";
      src = fetchFromGitHub {
        owner = "bkaradzic";
        repo = "GENie";
        rev = "7033f42eb19ee2d4196e4387dfd13e1a558c1177";
        sha256 = "16zmpg9r5bk50ny65pqg1ija2iblji5qkwrz6f5z8ys35gbhpywr";
      };
      installPhase = ''
        mkdir -p $out/bin
        cp bin/*/genie $out/bin/
      '';
    }}/bin/genie genie:' VITABUILD
  '';

  patches.sdl2_mixer = ''
    export VITASDK_EXTRA_CFLAGS="${"$"}{VITASDK_EXTRA_CFLAGS:-} $(arm-vita-eabi-pkg-config --cflags --libs opus)"
  '';

  patches.sdl2_mixer_ext = patches.sdl2_mixer;
}
