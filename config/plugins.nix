{pkgs, ...}: {
  config = {
    extraPlugins = [
      pkgs.vimPlugins.vim-rooter
    ];
    plugins = {
      # web-devicons.enable = true;
      # gitblame.enable = true;
      gitgutter.enable = true;
      # fugitive.enable = true;
      commentary.enable = true;
      # leap.enable = true;
      # fzf-lua.enable = true;
      # indent-blankline.enable = true;
      # treesitter.enable = true;
      # telescope.enable = true;
      lsp-format.enable = true;
      lspconfig.enable = true;
      cmp = {
        enable = true;
        autoEnableSources = true;
        cmdline = {
          "/" = {
            mapping = {
              __raw = "cmp.mapping.preset.cmdline()";
            };
            sources = [
              {
                name = "buffer";
              }
            ];
          };
          ":" = {
            mapping = {
              __raw = "cmp.mapping.preset.cmdline()";
            };
            sources = [
              {
                name = "path";
              }
              {
                name = "cmdline";
                option = {
                  ignore_cmds = [
                    "Man"
                    "!"
                  ];
                };
              }
            ];
          };
        };
        settings = {
          mapping = {
            __raw = ''
              cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping(function(fallback)
                  if cmp.visible() then
                    cmp.confirm({ select = true, })
                  else
                      fallback()
                  end
                end),
                ["<Tab>"] = cmp.mapping(function(fallback)
                  -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
                  if cmp.visible() then
                    cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
                  else
                    fallback()
                  end
                end, {"i","s","c",}),
              })
            '';
          };
          sources = [
            { name = "nvim_lsp"; }
            { name = "luasnip"; }
            { name = "buffer"; }
            { name = "path"; }
          ];
        };
      };
    };
  };
}
