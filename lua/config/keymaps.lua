-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<HOME>", "^", { desc = "Move Cursor To line head"    })

-- move cursor faster
map("n", "<C-k>",     "5gk", { desc = "Move Up Cursor 5 Lines"    })
map("n", "<C-UP>",    "5gk", { desc = "Move Up Cursor 5 Lines"    })
map("n", "<C-j>",     "5gj", { desc = "Move Down Cursor 5 Lines"  })
map("n", "<C-DOWN>",  "5gj", { desc = "Move Down Cursor 5 Lines"  })
map("n", "<C-h>",     "b",   { desc = "Move Cursor To Word Begin" })
map("n", "<C-LEFT>",  "b",   { desc = "Move Cursor To Word Begin" })
map("n", "<C-l>",     "e",   { desc = "Move Cursor To Word End"   })
map("n", "<C-RIGHT>", "e",   { desc = "Move Cursor To Word End"   })

-- adjust window size
map("n", "<leader><up>",    ":5winc +<CR>",   { desc = "" })
map("n", "<leader><down>",  ":5winc -<CR>",   { desc = "" })
map("n", "<leader><left>",  ":5winc <<CR>",   { desc = "" })
map("n", "<leader><right>", ":5winc ><CR>",   { desc = "" })

-- ripgrep integrated
map("n", "<leader>r",       ":Rg<space>",     { desc = "" })

-- move lines
map("n", "<S-DOWN>", "<cmd>m .+1<cr>==",        { desc = "Move Down" })
map("i", "<S-DOWN>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("v", "<S-DOWN>", ":m '>+1<cr>gv=gv",        { desc = "Move Down" })
map("n", "<S-UP>", "<cmd>m .-2<cr>==",          { desc = "Move Up" })
map("i", "<S-UP>", "<esc><cmd>m .-2<cr>==gi",   { desc = "Move Up" })
map("v", "<S-UP>", ":m '<-2<cr>gv=gv",          { desc = "Move Up" })


-- Archives

-- buffer is now bind with tabs
-- map("n", "<leader><Tab>",   ":bnext<CR>",     { desc = "" })
-- map("n", "<leader><S-Tab>", ":bprevious<CR>", { desc = "" })

