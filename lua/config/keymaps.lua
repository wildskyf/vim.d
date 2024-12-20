-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", ";", ":", { desc = "" })
map({ "n", "v" }, "<HOME>", "^", { desc = "Move Cursor To line head" })
map({ "i" }, "<HOME>", "<esc>^i", { desc = "Move Cursor To line head" })

-- move cursor faster
map({ "n", "v" }, "<C-k>", "5gk", { desc = "Move Up Cursor 5 Lines" })
map({ "n", "v" }, "<C-UP>", "5gk", { desc = "Move Up Cursor 5 Lines" })
map({ "n", "v" }, "<C-j>", "5gj", { desc = "Move Down Cursor 5 Lines" })
map({ "n", "v" }, "<C-DOWN>", "5gj", { desc = "Move Down Cursor 5 Lines" })
map({ "n", "v" }, "<C-h>", "b", { desc = "Move Cursor To Word Begin" })
map({ "n", "v" }, "<C-LEFT>", "b", { desc = "Move Cursor To Word Begin" })
map({ "n", "v" }, "<C-l>", "e", { desc = "Move Cursor To Word End" })
map({ "n", "v" }, "<C-RIGHT>", "e", { desc = "Move Cursor To Word End" })

-- adjust window size
map("n", "<leader><up>", "<cmd>5winc +<CR>", { desc = "Increace Window Height" })
map("n", "<leader><down>", "<cmd>5winc -<CR>", { desc = "Decreace Window Height" })
map("n", "<leader><left>", "<cmd>5winc <<CR>", { desc = "Increace Window Width" })
map("n", "<leader><right>", "<cmd>5winc ><CR>", { desc = "Decreace Window Width" })

-- move lines
map("n", "<S-DOWN>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
map("i", "<S-DOWN>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("v", "<S-DOWN>", "<cmd>m '>+1<cr>gv=gv", { desc = "Move Down" })
map("n", "<S-UP>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
map("i", "<S-UP>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<S-UP>", "<cmd>m '<-2<cr>gv=gv", { desc = "Move Up" })

-- buffer
map("n", "<leader><Tab>", "<cmd>bnext<CR>", { desc = "Next Buffer" })
map("n", "<leader><S-Tab>", "<cmd>bprevious<CR>", { desc = "Previous Buffer" })
map("n", "<A-Right>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<A-Left>", "<cmd>bprevious<CR>", { desc = "Previous Buffer" })

-- tab
-- TODO: let A-Left/Right navigate tabs, S-A-Left/Right move tabs
--
-- map("n", "<A-Left>", ":-tabmove<cr>", { desc = "Move Current Tab Left" })
-- map("n", "<A-Right>", ":+tabmove<cr>", { desc = "Move Current Tab Right" })
--
-- map("n", "<A-Home>", ":tabm 0<cr>", { desc = "Move Current Tab First" })
-- map("n", "<A-End>", ":tabm<cr>", { desc = "Move Current Tab End" })

-- Archives
