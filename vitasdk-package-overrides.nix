{ pkgs ? import<nixpkgs>{} }:

with pkgs;

{
  patches.openssl = ''
    patchShebangs --build vita-openssl
    sed -i 's/printf .*/#\0/' VITABUILD
  '';
  deps.openssl = [ perl xorg.makedepend (writeShellScriptBin "nproc" "echo 1") ];
}
