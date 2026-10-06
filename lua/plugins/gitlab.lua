-- return {
--   { "stevearc/dressing.nvim" },
--   { "sindrets/diffview.nvim" },
--   {
--     "harrisoncramer/gitlab.nvim",
--     requires = {
--       "MunifTanjim/nui.nvim",
--       "nvim-lua/plenary.nvim",
--       "sindrets/diffview.nvim",
--       "stevearc/dressing.nvim",
--       "nvim-tree/nvim-web-devicons",
--     },
--     run = function()
--       require("gitlab.server").build()
--     end,
--     config = function()
--       require("diffview")
--       require("gitlab").setup({
--         connection_settings = {
--           insecure = true,
--           proxy = "",
--           remote = "origin",
--         },
--         config_path = vim.fn.expand("~/.config/nvim/"),
--       })
--     end,
--   },
-- }
return {
  "harrisoncramer/gitlab.nvim",
  -- branch = "main", -- Uncomment to use a stable version. The default, possibly unstable, but more actively maintained branch is `develop`.
  dependencies = {
    "MunifTanjim/nui.nvim",
    "dlyongemallo/diffview-plus.nvim", -- Maintained fork of "sindrets/diffview.nvim".
    "stevearc/dressing.nvim", -- Recommended but not required. Better UI for pickers.
    "nvim-tree/nvim-web-devicons", -- Recommended but not required. Icons in discussion tree.
  },
  ---@type GitlabSettings
  opts = {}, -- Your configuration
}
