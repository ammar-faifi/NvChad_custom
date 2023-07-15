-- custom/configs/null-ls.lua

local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.djlint,
  lint.djlint,
}

null_ls.setup {
   sources = sources,
}
