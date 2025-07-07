return {
  "ibhagwan/fzf-lua",
  opts = {
    -- Configure fzf native options
    fzf_opts = {
      -- Enable history and set history file
      ["--history"] = vim.fn.stdpath("data") .. "/fzf-lua-history",
      ["--history-size"] = "1000",
    },
    -- Configure keymap for fzf native
    keymap = {
      fzf = {
        -- Use default fzf keybindings for history
        ["ctrl-p"] = "previous-history",
        ["ctrl-n"] = "next-history",
        ["ctrl-r"] = "toggle-search",
      },
    },
    -- Configure individual pickers
    files = {
      fzf_opts = {
        ["--history"] = vim.fn.stdpath("data") .. "/fzf-lua-files-history",
        ["--multi"] = true,  -- Enable multi-select
      },
      actions = {
        ["default"] = require("fzf-lua.actions").file_edit,
        ["ctrl-t"] = require("fzf-lua.actions").file_tabedit,
        ["ctrl-s"] = require("fzf-lua.actions").file_split,
        ["ctrl-v"] = require("fzf-lua.actions").file_vsplit,
      },
    },
    grep = {
      fzf_opts = {
        ["--history"] = vim.fn.stdpath("data") .. "/fzf-lua-grep-history",
      },
    },
  },
}

