{ pkgs ? import<nixpkgs>{} }:

with pkgs;

rec {
  patches.openssl = ''
    patchShebangs --build vita-openssl
    sed -i 's/printf .*/#\0/' VITABUILD
  '';
  deps.openssl = [ perl xorg.makedepend (writeShellScriptBin "nproc" "echo 1") ];

  patches."openssl-1.1.1" = ''
    patchShebangs --build vita-openssl3
    sed -i 's/printf .*/#\0/' VITABUILD
  '';
  deps."openssl-1.1.1" = deps.openssl;
}
