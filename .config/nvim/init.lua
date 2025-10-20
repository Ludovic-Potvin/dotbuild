-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Keep cursor center
vim.opt.scrolloff = 20
vim.opt.colorcolumn = "80"

vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    vim.opt.guicursor = "a:ver25"
  end,
})
