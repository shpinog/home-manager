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
    enable = true;
  };



  home.keyboard = {
    layout = "us,ru(winkeys)";
    options = [ "grp:caps_toggle" "grp_led:caps" ];
  };


}
