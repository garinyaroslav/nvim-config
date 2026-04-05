return {
  { "stevearc/dressing.nvim" },
  { "sindrets/diffview.nvim" },
  {
    "harrisoncramer/gitlab.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "stevearc/dressing.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    run = function()
      require("gitlab.server").build()
    end,
    config = function()
      require("diffview")
      require("gitlab").setup({
        connection_settings = {
          insecure = true,
          proxy = "",
          remote = "origin",
        },
        config_path = vim.fn.expand("~/.config/nvim/"),
      })
    end,
  },
}
