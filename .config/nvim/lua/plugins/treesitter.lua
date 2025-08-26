return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "vim", "vimdoc", "query" }, -- Recommended core parsers
        sync_install = false, -- Install parsers asynchronously
        auto_install = true,  -- Automatically install missing parsers
        highlight = {
          enable = true, -- Enable syntax highlighting
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true }, -- Enable indentation based on Treesitter
      })
    end
}
