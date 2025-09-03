require("config.lazy")

-- Map Ctrl+C to Escape in insert, normal, and visual modes
vim.keymap.set("i", "<C-c>", "<Esc>", { noremap = true })
vim.keymap.set("n", "<C-c>", "<Esc>", { noremap = true })
vim.keymap.set("v", "<C-c>", "<Esc>", { noremap = true })

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
		vim.opt_local.shiftwidth = 2 -- indentation width
		vim.opt_local.tabstop = 2 -- number of spaces a <Tab> counts for
	end,
})

-- Diagnostic messages
vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.INFO] = "󰋼",
			[vim.diagnostic.severity.HINT] = "󰌵",
		},
	},
	virtual_text = false,
	severity_sort = true,
	underline = true,
	jump = {
		float = true,
	},
})
