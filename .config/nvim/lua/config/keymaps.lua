-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "v", "i" }, "<C-c>", "<Esc>", { noremap = true })

vim.keymap.del({ "n", "v", "i" }, "<M-j>") -- Unbind Alt+j in normal and visual modes
vim.keymap.del({ "n", "v", "i" }, "<M-k>") -- Unbind Alt+k in normal and visual modes
