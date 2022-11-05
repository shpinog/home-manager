{ config, pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    #comand line utils
    # rust alanogs
    du-dust
    duf
    fd
    procs
    #shells
    #
    #
    #Editors
    ##vim
    neovide
    rnix-lsp
    gh
    vimPlugins.packer-nvim
    ripgrep # reipgrep for telescope pluging

    ##
    geany-with-vte
    sublime4
    pavucontrol
    #
    #Media
    #
    lutris
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

    # File Managers
    xfce.thunar
    xfce.thunar-volman
    xfce.thunar-archive-plugin
    xfce.thunar-media-tags-plugin

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
