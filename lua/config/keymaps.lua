-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- change keybinding for moving between windows
vim.keymap.del("n", "<leader><tab>[")
vim.keymap.del("n", "<leader><tab>]")
vim.keymap.set("n", "<leader><tab>n", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>p", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Disable native cmd-history keybindings, <space>: is better
-- FIXME: does only work when keybinding are pressed quick
vim.keymap.set("n", "q:", "nop")
vim.keymap.set("n", "q?", "Nop")
vim.keymap.set("n", "q/", "Nop")
vim.keymap.set("n","C-f", "Nop")

-- Dissable the bad suggestions not that popes up
vim.keymap.set("i", "<C-n>", "<Nop>")
vim.keymap.set("i", "<C-p>", "<Nop>")

-- Create new buffer
vim.keymap.set("n", "<leader>bn", "<cmd>ene<cr>", { desc = "New buffer" })



-- Move in insert moder
-- vim.keymap.set("i", "<C-l>", "<C-o>a", { desc = "" })
-- vim.keymap.set("i", "<C-h>", "<C-o>h", { desc = "" })
