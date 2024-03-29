{ config, pkgs, ... }:

let
  unstableTarball =
    fetchTarball
      https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz;
in
{

  nixpkgs.config = {
    packageOverrides = pkgs: {
      unstable = import unstableTarball {
        config = config.nixpkgs.config;
      };
    };
  };

home.packages = with pkgs; [
  unstable.htop
  unstable.sumneko-lua-language-server
  unstable.chromium
  unstable.tdesktop
  ];

}
