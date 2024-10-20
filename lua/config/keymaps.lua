-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Ledader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Disable native cmd-history keybindings, <space>: is better
vim.keymap.set("n", "q:", "nop")
vim.keymap.set("n", "q?", "Nop")
vim.keymap.set("n", "q/", "Nop")
vim.keymap.set("n","C-f", "Nop")

-- Dissable the bad suggestions not that popes up
vim.keymap.set("i", "<C-n>", "<Nop>")
vim.keymap.set("i", "<C-p>", "<Nop>")

-- Create new buffer
vim.keymap.set("n", "<leader>bn", "<cmd>ene<cr>", { desc = "New buffer" })

