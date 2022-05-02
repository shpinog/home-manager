{ config, pkgs, ... }:
{

  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    #shells
    #
    wireguard
    fd
    #
    #Editors
    ##vim
    neovide
    vimPlugins.packer-nvim
    sumneko-lua-language-server
    ripgrep # reipgrep for telescope pluging

    ##
    geany-with-vte
    sublime4
    pavucontrol
    #
    #Media
    #
    gnome.eog
    spotify
    mpv
    okular
    lxappearance
    ffmpeg-full
    audio-recorder
    #
    rustc
    cargo
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
    peek
    #disk
    gptfdisk
    util-linux

    ###sway
    swaykbdd
    swayidle
    mako # notification daemon
    waybar
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    grim
    kanshi
    slurp # wayland
    wl-clipboard
    swaybg
    wofi
    flashfocus
    autotiling
    swaykbdd
    jq
    #
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
