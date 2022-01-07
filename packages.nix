{ config, pkgs, ... }:
{

  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    wireguard
    fd
    #editors
    neovide
    geany-with-vte
    #
    htop
    github-desktop
    nmap
    tcpdump
    ngrep
    sshfs
    arc-theme
    smplayer
    discord
    breeze-qt5
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
    swayidle
    mako # notification daemon
    waybar
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    grim
    kanshi
    slurp # wayland
    sway
    wl-clipboard
    wl-clipboard-x11
 
 
  ];
}
