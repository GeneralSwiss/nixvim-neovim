(pkgs, ...): {
  config = {
    extraPlugins = [
      pkgs.vimPlugins.vim-rooter
    ];
  };
}
