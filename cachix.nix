  {
    imports = [
      (
        let
          declCachix = builtins.fetchTarball "https://github.com/jonascarpay/declarative-cachix/archive/a2aead56e21e81e3eda1dc58ac2d5e1dc4bf05d7.tar.gz";
        in import "${declCachix}/home-manager.nix"
      )
    ];


    caches.extraCaches = [
      {
        url = "https://hyprland.cachix.org";
        key = "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc=";
      }
    ];
  }
