-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Map Ctrl+C to Escape in insert, normal, and visual modes
vim.keymap.set("i", "<C-c>", "<Esc>", { noremap = true })
vim.keymap.set("n", "<C-c>", "<Esc>", { noremap = true })
vim.keymap.set("v", "<C-c>", "<Esc>", { noremap = true })

-- Keep cursor center
vim.opt.scrolloff = 20
