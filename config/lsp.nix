{lib, ...}: {
  lsp = {
    inlayHints.enable = true;
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
        key = "<leader>r";
        lspBufAction = "rename";
      }
      {
        key = "<leader>l";
        lspBufAction = "format";
      }
      {
        key = "<leader>f";
        lspBufAction = "code_action";
      }
      {
        action = lib.nixvim.mkRaw "function() vim.diagnostic.jump({ count=-1, float=true }) end";
        key = "<leader>k";
      }
      {
        action = lib.nixvim.mkRaw "function() vim.diagnostic.jump({ count=1, float=true }) end";
        key = "<leader>j";
      }
    ];
    servers = {
      "*" = {
        settings = {
          root_markers = [
            ".git"
          ];
        };
      };  
      rust_analyzer.enable = true;
      nixd.enable = true;
    };
  };

}
