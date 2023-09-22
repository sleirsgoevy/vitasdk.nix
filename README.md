# vitasdk.nix

This repository contains [Nix](https://nixos.org) derivations for the VitaSDK.

Sample usage:

```nix
nix-shell -p '(import ./vitasdk-packages.nix {}).vitasdk' '(import ./vitasdk-packages.nix {}).vitaGL'
```

A flake is also provided, you can use it like this:

```nix
nix shell github:sleirsgoevy/vitasdk.nix#vitasdk
```

Note that this way you cannot add libraries to your shell without writing a flake for your own app.

## Packages

Derivations for all [official VitaSDK packages](https://github.com/vitasdk/packages) are generated, however not all of them actually compile or even evaluate successfully. For example, one package has its source hosted on SVN, which the current lockfile generator does not support.
