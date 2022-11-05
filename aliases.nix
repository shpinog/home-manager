{ config, pkgs, ... }: {


  programs.bash.shellAliases = {

    em = "emacsclient -c -t ";
    cat = "bat";
    du = "du-dust";
    };

  programs.fish.shellAliases = {

    cat = "bat";
    du = "du-dust";
    hms = "home-manager switch";
    nrs = "sudo nixos-rebuild switch";
  };



}
