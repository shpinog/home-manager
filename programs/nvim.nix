{ config, pkgs, ... }: {

  programs.neovim = {
    enable = true;
    vimAlias = true;

    coc = {
      enable = false;
      settings = {
        "suggest.noselect" = true;
        "suggest.enablePreview" = true;
        "suggest.enablePreselect" = false;
        "suggest.disableKind" = true;
      };
    };
    plugins = with pkgs.vimPlugins; [
      yankring
      vim-nix
      YouCompleteMe
      suda-vim
      vim-wayland-clipboard
      vim-sandwich      

      {
        plugin = YouCompleteMe;
        config = "let g:ycm_key_list_stop_completion = [ '<Enter>' ]";
      }
      {
        plugin = vim-startify;
        config = "let g:startify_change_to_vcs_root = 0";
      }
    ];

    extraConfig = '' 

    if !empty(&viminfo)
          set viminfo^=!
          endif
    '';

  };

}
