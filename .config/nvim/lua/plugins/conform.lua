return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- python = { "isort", "black" },
			},
		})
	end,
	keys = {
		{
			"<leader>cc",
			function()
				require("conform").format({ bufnr = vim.api.nvim_get_current_buf() })
			end,
			desc = "Lint file",
			silent = true,
		},
	},
}
