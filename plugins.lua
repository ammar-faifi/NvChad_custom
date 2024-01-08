local plugins = {
  -- esailly surround text with parenth
  {
    'kylechui/nvim-surround',
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    'glacambre/firenvim',
    -- Lazy load firenvim
    -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
    lazy = not vim.g.started_by_firenvim,
    build = function()
        vim.fn["firenvim#install"](0)
    end
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "python",
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",

       -- low level
        "c",
      },
    },
  },

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
       "nvimtools/none-ls.nvim",
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
        "latexindent",
        "cspell",
      },
    },
  },

  -- Python select venv
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
    config = true,
    event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  }
}

return plugins
