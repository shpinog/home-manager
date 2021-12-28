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

  home.file = {
    ".config/kitty/kitty.conf".source = /home/shpinog/.config/nixpkgs/configFiles/kitty.conf; #kitty config
  #  ".config/sway/config".source = /home/shpinog/.config/nixpkgs/configFiles/sway/config; #sway config



    # ".config/waybar/config".source = /home/shpinog/.config/nixpkgs/configFiles/waybar/config; #waybar conig
    # ".config/waybar/config/scripts/scratchpads.py".source = /home/shpinog/.config/nixpkgs/configFiles/waybar/scripts/scratchpads.py; #waybar script

    # ".config/ranger".source = /home/shpinog/.config/nixpkgs/configFiles/ranger; #ranger config
    # "/.tmux.conf".source = ../configFiles/.tmux/.tmux.conf; #tmux config
    # "/.tmux.conf.local".source = ../configFiles/.tmux/.tmux.conf.local; #tmux config

  };



}
