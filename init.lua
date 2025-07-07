if vim.g.vscode then
  -- VSCode Neovim
  require("config.keymaps")
else
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
end
