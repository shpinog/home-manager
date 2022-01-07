{ config, pkgs, ... }: {



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

    mimeApps = {
      defaultApplications = {
        "video/x-matroska" = [ "mpv.desktop" "vlc.desktop" ];
        "video/mp4" = [ "mpv.desktop" "vlc.desktop" ];
        "audio/ogg" = [ "mpv.desktop" "vlc.desktop" ];

      };
      associations.added = {

      };
    
    };
  };



  home.keyboard = {
    layout = "us,ru(winkeys)";
    options = [ "grp:caps_toggle" "grp_led:caps" ];
  };


}
