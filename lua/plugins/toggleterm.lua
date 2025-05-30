return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      direction = "float",
    },
    -- config = function(_, opts)
    --   require("toggleterm").setup(opts)
    --
    --   vim.api.nvim_set_keymap("t", "<C-><C-n>", "<C-\\><C-n>", { noremap = true, silent = true })
    --
    --   vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
    --
    --   vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter" }, {
    --     pattern = { "term://*toggleterm*" },
    --     callback = function()
    --       if vim.bo.buftype == "terminal" then vim.cmd "startinsert" end
    --     end,
    --   })
    -- end,
  },
}
