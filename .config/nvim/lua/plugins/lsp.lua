return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              exclude = { "**/site-packages" },
              analysis = {
                diagnosticSeverityOverrides = {
                  reportUnusedCallResult = "none",
                },
              },
            },
          },
        },
      },
    },
  },
}
