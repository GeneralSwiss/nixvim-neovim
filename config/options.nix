{
  config = {
    clipboard.register = "unnamedplus";
    clipboard.providers.xclip.enable = true;
    vimAlias = true;
    globals.mapleader = " ";
    colorschemes = { 
      base16 = {
        enable = true;
        colorscheme = "gruvbox-dark-medium";
      	setUpBar = true;
      };
    };
    opts = {
      scrolloff = 2; # scroll below content
      wrap = false; # do not wrap lines
      splitright = true; # always split the same way
      splitbelow = true; # always split the same way
      ignorecase = true; # when searching
      smartcase = true; # when searching if captialized, then  respect casing
      cursorline = true; # highlight curosr line
      colorcolumn = [ 80 120 ]; # vertical bar at 80, 120
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      tabstop = 2;
      expandtab = true;
      smartindent = false;
    };
  };
}
