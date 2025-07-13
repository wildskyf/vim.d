return {
  -- ensure mason installs csharp-language-server
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "csharp-language-server" })
    end,
  },

  -- configure csharp language server
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        csharp_ls = {
          enabled = true,
          cmd = { "csharp-ls" },
          filetypes = { "cs" },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("*.sln", "*.csproj", ".git")(fname)
          end,
          init_options = {
            AutomaticWorkspaceInit = true,
          },
          settings = {
            csharp = {
              semanticHighlighting = {
                enabled = true,
              },
            },
          },
        },
      },
    },
  },

  -- file type detection for C#
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "c_sharp" })
      end
    end,
  },
}