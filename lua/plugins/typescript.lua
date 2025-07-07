return {
  -- add typescript-tools.nvim
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },

  -- ensure mason installs the server
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "prettier",
        "eslint-lsp",
      },
      ui = {
        border = "rounded",
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      },
      log_level = vim.log.levels.INFO,
      max_concurrent_installers = 10,
    },
  },

  -- configure typescript server with typescript-tools
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          enabled = false,
        },
        vtsls = {
          enabled = false,
        },
        typescript_tools = {
          enabled = true,
        },
      },
      setup = {
        tsserver = function()
          return true
        end,
        vtsls = function()
          return true
        end,
        typescript_tools = function()
          return true
        end,
      },
    },
  },
}