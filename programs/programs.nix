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

  imports = [
    #./sway.nix
    ./nvim.nix
    ./firefox.nix
    ./foot.nix
    ./fish.nix
    ./alacritty.nix
#    ./hyprland.nix

  ];


  gtk = {
    enable = true;
    theme = {
      name = "Yaru-dark";
      package = pkgs.yaru-theme;
    };
    iconTheme = {
      name = "Papirus";
      package = pkgs.papirus-icon-theme;
    };
    font = {
      name = "IBM Plex 12";
    };
    gtk3.extraConfig.gtk-cursor-theme-name = "breeze";
  };


  programs = {


    bat = {
      enable = true;
      config  = {
        paging = "never";
      };
    };

    fzf = {
      enable = true;
      enableFishIntegration = true;
    };

    zoxide = {
      enable = true;
      package = pkgs.unstable.zoxide;
      enableFishIntegration = true;
      
    };
    
    lsd = {
      enable = true;
      enableAliases = true;
    };
    
    broot = {
      enable = true;
      enableFishIntegration = true;

    };

    git = {
      enable = true;
      userName = "Shpinog";
      userEmail = "shpinog@gmail.com";
    };

    emacs = {
      enable = true;
      package = pkgs.emacs-nox;


    };

    rofi = {
      enable = true;
      font = "Hack 16";

    };


    # bash = {
    #   enable = true;
    # };


    mpv = {
      enable = true;
      config =
        {
          keepaspect = "yes";
          deband = "no";
    #      force-window = true;
          cache = "yes";
          cache-pause-initial = "yes";
          cache-pause-wait = "10";
          interpolation = "yes";
          video-sync = "display-resample";
          tscale = "oversample";
          hwdec-codecs = "all";
          audio-channels = "stereo";
    #      gpu-context = "x11vk";
        };
    };
  };
}
