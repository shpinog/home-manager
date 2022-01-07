{ config, pkgs, ... }: {


  wayland.windowManager.sway = {

    enable = false;

    wrapperFeatures.gtk = true;

  };


  services.kanshi.enable = false;

  home.packages = with pkgs; [
    swayidle
    wl-clipboard
    mako # notification daemon
    waybar
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    grim
    kanshi

  ];
}