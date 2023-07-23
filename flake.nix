{
  description = "VitaSDK core & libraries packaged for Nix";
  outputs = { self, nixpkgs }: rec {
    packages = builtins.mapAttrs (k: v: import ./vitasdk-packages.nix { pkgs = v; }) nixpkgs.legacyPackages;
    defaultPackage = builtins.mapAttrs (k: v: v.vitasdk) packages;
  };
}
