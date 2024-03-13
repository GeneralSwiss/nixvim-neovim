{
  plugins.lsp = {
    enable = true;
    keymaps = {
      diagnostic = {
        "<leader>k" = "goto_prev";
        "<leader>j" = "goto_next";
      };
      lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };
    servers = {
      rust-analyzer.enable = true;
      rust-analyzer.installCargo = false;
      rust-analyzer.installRustc = false;
      nixd.enable = true;
      kotlin-language-server.enable = true;
      tsserver.enable = true;
    };
  };
}
