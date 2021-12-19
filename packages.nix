{ config, pkgs, ... }:
let
  unstable = import <nixos-unstable> { };
in
{

  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [

    htop
    github-desktop
    nmap
    tcpdump
    ngrep
    sshfs
    ipscan
    arc-theme
    smplayer
    discord
    breeze-qt5
    kitty
    mpv
    ddrescue
    udiskie
    usbutils
    glxinfo
    dconf
    libreoffice-qt
    #nix
    nixpkgs-fmt
    #
    qbittorrent
    networkmanagerapplet
    okular
    lxappearance
    ffmpeg-full
    peek
    pavucontrol
    audio-recorder
    gnome3.adwaita-icon-theme
    hicolor_icon_theme
    #sway
    slurp # wayland
    sway
    swayidle
    wl-clipboard
    unstable.wl-clipboard-x11
    mako # notification daemon
    waybar
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    grim
  ];
}
