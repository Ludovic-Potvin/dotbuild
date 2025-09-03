return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
        win = {
            border = "rounded",
            padding = {1 , 2},
            title = "Keymaps",

            -- Position
            row = math.huge,
            col = math.huge,

            -- Size
            width = 50,
            height = 10
        }
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
