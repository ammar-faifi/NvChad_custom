local M = {}

M.plugins = "custom.plugins"

M.ui = {
  transparency = true,
  nvdash = {
    load_on_startup = true,
  },
}

M.lazy_nvim = {
  performance = {
    rtp = {
      -- Comment plugins that you want to leave enabled:
      disabled_plugins = {
        "2html_plugin",
        "tohtml",
        "getscript",
        "getscriptPlugin",
        -- "gzip",
        "logipat",
        -- "netrw",
        -- "netrwPlugin",
        -- "netrwSettings",
        -- "netrwFileHandlers",
        "matchit",
        -- "tar",
        -- "tarPlugin",
        "rrhelper",
        "spellfile_plugin",
        "vimball",
        "vimballPlugin",
        -- "zip",
        -- "zipPlugin",
        "tutor",
        "rplugin",
        "syntax",
        "synmenu",
        "optwin",
        "compiler",
        "bugreport",
        "ftplugin",
        "editorconfig",
      }
    }
  }
}

return M
