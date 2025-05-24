{lib, ...}: {
  plugins.lsp = {
    enable = true;
    keymaps = [
    {
    key = "gd";
    lspBufAction = "definition";
    }
    {
    key = "gD";
    lspBufAction = "references";
    }
    {
    key = "gt";
    lspBufAction = "type_definition";
    }
    {
    key = "gi";
    lspBufAction = "implementation";
    }
    {
    key = "K";
    lspBufAction = "hover";
    }
    {
    key = lib.nixvim.mkRaw "function() vim.diagnostic.jump({ count=-1, float=true }) end";
    lspBufAction = "<leader>k";
    }
    {
    key = lib.nixvim.mkRaw "function() vim.diagnostic.jump({ count=1, float=true }) end";
    lspBufAction = "<leader>j";
    }
    ];
    servers = {
      rust_analyzer = {
        enable = true;
      };
    };
  };

}
