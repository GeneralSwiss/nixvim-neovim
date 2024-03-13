{
  keymaps = [
    {
      # remap <Esc>
      key = "jk";
      action = "<Esc>";
      mode = "i";
    }
    { # quick save
      key = "<leader>w";
      action = "<cmd>w<CR>";
    }
    { # quick quit
      key = "<leader>q";
      action = "<cmd>q<CR>";
    }
  ];
}
