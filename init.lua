if vim.g.vscode then
  -- VSCode Neovim
  require("config.keymaps")
else
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")

  require("codecompanion").setup({
    adapters = {
      ollama = function()
        return require("codecompanion.adapters").extend("ollama", {
          env = {
            url = "http://127.0.0.1:11434", -- optional: default value is ollama url http://127.0.0.1:11434
            api_key = "",
          },
          headers = {
            ["Content-Type"] = "application/json",
          },
          parameters = {
            sync = true,
          },
        })
      end,
    },
  })
end
