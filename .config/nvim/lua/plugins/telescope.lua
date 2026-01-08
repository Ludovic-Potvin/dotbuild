return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files({
          hidden = true,
          no_ignore = true,
        })
      end,
      desc = "Find files (include ignored + hidden)",
    },
    {
      "<leader><leader>",
      function()
        require("telescope.builtin").find_files({
          hidden = true,
          no_ignore = true,
        })
      end,
      desc = "Find files (include ignored + hidden)",
    },
  },
}
