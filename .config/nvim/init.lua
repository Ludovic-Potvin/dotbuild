require("config.lazy")

-- Tabs configs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Keep cursor center
vim.opt.scrolloff = 20

-- Copy to the system clipboard
vim.opt.clipboard = "unnamedplus"

-- Fix the >> removing visual mode
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
