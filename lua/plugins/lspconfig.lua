return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      kotlin_language_server = {
        settings = {
          kotlin = {
            compiler = {
              jvm = {
                target = "21",
              },
            },
          },
        },
      },
    },
  },
}
