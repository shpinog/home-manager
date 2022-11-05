{ config, pkgs, ... }: {


  home.file.".icons/default".source =
    "${pkgs.breeze-qt5}/share/icons/breeze_cursors";

  #waybar configuration files
  xdg.configFile."waybar" = {
    recursive = false;
    source = "/home/shpinog/.config/nixpkgs/configFiles/waybar";
  };

  #sway configuration files

  xdg.configFile."sway" = {
    recursive = false;
    source = "/home/shpinog/.config/nixpkgs/configFiles/sway";
  };

  #foot configuration files







}
