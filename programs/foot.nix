{ config, pkgs, ... }: {

  programs.foot = {
    enable = true;
    settings = {
      main = {
        term = "xterm-256color";
        login-shell = "yes";
        shell = "fish";
        font = "Iosevka:size=14";
        dpi-aware = "yes";
      };

      mouse = {
        hide-when-typing = "yes";
      };
    };
  };

}
