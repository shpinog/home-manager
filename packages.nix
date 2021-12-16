{ config, pkgs, ... }: {

  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
      htop
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
      mako # notification daemon
      waybar
      xdg-desktop-portal
      xdg-desktop-portal-wlr
      grim
  ];
}
