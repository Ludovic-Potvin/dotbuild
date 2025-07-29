return {
  -- Add gruvbox plugin
  { "ellisonleao/gruvbox.nvim" },
  -- Configure LazyVim to load gruvbox as the default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
