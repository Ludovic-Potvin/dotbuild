return {
    "stevearc/oil.nvim",
    config = function()
        require("oil").setup({
            view_options = {
                show_hidden = false,
                is_hidden_file = function()
                  return false
                end,
            }
        })
    end,
    keys = {
        {
            "<leader>fd",
            ":Oil<CR>",
            desc = "Edit directory (Open Oil)",
            silent = true,
        },
    },
}
