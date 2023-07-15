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
}

return plugins
