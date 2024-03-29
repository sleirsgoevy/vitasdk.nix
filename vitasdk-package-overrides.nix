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
}
