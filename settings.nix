{ config, pkgs, ... }: {


  services.kdeconnect = {
    enable = true;
    indicator = true;
  };


  services.emacs = {
    enable = false;
    package = pkgs.emacs-nox;
    socketActivation.enable = true;
    client = {
      enable = true;
      arguments = [ "-c" ];
    };
  };


  xdg = {
    userDirs = {
      enable = true;
      createDirectories = true;
    };

    systemDirs.data = [
];

    mime = {
      enable = true;
    };

    configFile."mimeapps.list".force = true;

    mimeApps = {
      enable = true;
      defaultApplications = {
        "video/x-matroska" = [ "mpv.desktop" "vlc.desktop" ];
        "video/mp4" = [ "mpv.desktop" "vlc.desktop" ];
        "audio/ogg" = [ "mpv.desktop" "vlc.desktop" ];
        "inode/directory" = [ "org.gnome.Nautilus.desktop" ];
        "text/uri-list" = [ "firefox.desktop" ];
        "text/x-uri" = [ "firefox.desktop" ];
        "x-scheme-handler/http" = [ "firefox.desktop" ];
        "x-scheme-handler/https" = [ "firefox.desktop" ];
        "x-scheme-handler/chrome" = [ "firefox.desktop" ];
        "application/x-extension-htm" = [ "firefox.desktop" ];
        "application/x-extension-html" = [ "firefox.desktop" ];
        "application/xhtml+xml" = [ "firefox.desktop" ];
        "application/x-extension-xhtml" = [ "firefox.desktop" ];


      };
      associations.added = { };

    };
  };



  home.keyboard = {
    layout = "us,ru(winkeys)";
    options = [ "grp:caps_toggle" "grp_led:caps" ];
  };


}
