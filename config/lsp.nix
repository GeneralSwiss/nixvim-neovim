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
    servers.rust-analyzer.enable = true;
  };
}
