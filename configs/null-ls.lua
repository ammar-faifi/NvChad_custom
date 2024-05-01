-- custom/configs/null-ls.lua

local null_ls = require "null-ls"

local lint = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics

local sources = {
  formatting.djlint,
  lint.djlint,
  formatting.black,
  formatting.clang_format,
  formatting.prettier,
}

null_ls.setup {
   sources = sources,
   default_timeout = 15000,
}
