return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    { "folke/snacks.nvim", opts = { input = { enabled = true } } },
  },
  config = function()
    vim.g.opencode_opts = {}
    vim.opt.autoread = true
  end,
  keys = {
    {
      "<leader>ot",
      function()
        require("opencode").toggle()
      end,
      desc = "Toggle embedded",
      mode = "n",
    },
    {
      "<leader>oa",
      function()
        require("opencode").ask("@cursor: ")
      end,
      desc = "Ask about this",
      mode = "n",
    },
    {
      "<leader>oa",
      function()
        require("opencode").ask("@selection: ")
      end,
      desc = "Ask about selection",
      mode = "v",
    },
    {
      "<leader>o+",
      function()
        require("opencode").prompt("@buffer", { append = true })
      end,
      desc = "Add buffer to prompt",
      mode = "n",
    },
    {
      "<leader>o+",
      function()
        require("opencode").prompt("@selection", { append = true })
      end,
      desc = "Add selection to prompt",
      mode = "v",
    },
    {
      "<leader>oe",
      function()
        require("opencode").prompt("Explain @cursor and its context")
      end,
      desc = "Explain this code",
      mode = "n",
    },
    {
      "<leader>on",
      function()
        require("opencode").command("session_new")
      end,
      desc = "New session",
      mode = "n",
    },
    {
      "<S-C-u>",
      function()
        require("opencode").command("messages_half_page_up")
      end,
      desc = "Messages half page up",
      mode = "n",
    },
    {
      "<S-C-d>",
      function()
        require("opencode").command("messages_half_page_down")
      end,
      desc = "Messages half page down",
      mode = "n",
    },
    {
      "<leader>os",
      function()
        require("opencode").select()
      end,
      desc = "Select prompt",
      mode = { "n", "v" },
    },
  },
}
