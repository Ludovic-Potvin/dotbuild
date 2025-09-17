return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              exclude = { "**/site-packages" },
            },
          },
        },
      },
    },
  },
}
