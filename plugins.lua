local plugins = {
  {
    "L3MON4D3/LuaSnip",
    config = function(_, opts)
      -- call NvChad defualt `luasnip` configs
      require("plugins.configs.others").luasnip(opts)

      -- add html snippets into `htmldjango` filetypes
      require("luasnip").filetype_extend('htmldjango', { 'html', })
    end,
  },

  -- LSP
  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",

    -- to load null-ls
     dependencies = {
       "jose-elias-alvarez/null-ls.nvim",
       config = function()
         require "custom.configs.null-ls"
       end,
     },
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },

 {
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "pyright",
        "djlint",
      },
    },
  },

}

return plugins
