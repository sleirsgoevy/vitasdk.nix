nix --show-trace --extra-experimental-features nix-command build --impure --expr 'import ./vitasdk-package-lock-gen.nix {}' --print-out-paths --no-link | xargs diff -u vitasdk-package-lock.nix 
