{pkgs, ...}: {
  config = {
    extraPlugins = [
      pkgs.vimPlugins.vim-rooter
    ];
    
    plugins = {
      # web-devicons.enable = true;
      # gitblame.enable = true;
      # gitgutter.enable = true;
      # fugitive.enable = true;
      # commentary.enable = true;
      # leap.enable = true;
      # fzf-lua.enable = true;
      # indent-blankline.enable = true;
      # treesitter.enable = true;
      # telescope.enable = true;
      # lsp-format.enable = false;
    };
  };
}
