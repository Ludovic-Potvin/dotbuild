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
        vim.keymap.set("n", "<leader>fd", ":Oil --float <CR>")
    end,
}

