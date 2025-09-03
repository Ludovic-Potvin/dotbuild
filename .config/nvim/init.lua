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

-- Fix lua indent
vim.api.nvim_create_autocmd("FileType", {
    pattern = "lua",
    callback = function()
        vim.opt_local.shiftwidth = 2  -- indentation width
        vim.opt_local.tabstop = 2     -- number of spaces a <Tab> counts for
    end,
})
