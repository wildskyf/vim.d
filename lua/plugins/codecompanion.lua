return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = true
  },
  -- TODO: use ollama

  -- {
  --   'saghen/blink.compat',
  --   enabled = false
  -- },
  -- {
  --   "saghen/blink.cmp",
  --   dependencies = { "olimorris/codecompanion.nvim", "saghen/blink.compat" },
  --   event = "InsertEnter",
  --   opts = function(_, opts) return {
  --     enabled = function()
  --       return vim.bo.buftype ~= "prompt" and vim.b.completion ~= false
  --     end,
  --     completion = {
  --       accept = {
  --         auto_brackets = {
  --           kind_resolution = {
  --             blocked_filetypes = { "typescriptreact", "javascriptreact", "vue", "codecompanion" },
  --           },
  --         },
  --       },
  --     },
  --     sources = {
  --       compat = { "codecompanion" },
  --       providers = {
  --         codecompanion = {
  --           name = "CodeCompanion",
  --           module = "codecompanion.providers.completion.blink",
  --           enabled = true,
  --         },
  --       },
  --     },
  --   } end,
  -- }
}
