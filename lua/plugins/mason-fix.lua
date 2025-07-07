return {
  -- Fix mason.nvim build issues
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- update registry contents
    opts = {
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
}