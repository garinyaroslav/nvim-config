return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    window = {
      position = "current", -- Открывать Neo-tree в текущем окне
    },
    filesystem = {
      follow_current_file = true, -- Следовать за текущим файлом
      filtered_items = {
        hide_dotfiles = false, -- Показывать скрытые файлы
        hide_gitignored = false, -- Если нужно также показывать файлы, игнорируемые Git
      },
      use_libuv_file_watcher = true, -- Обновление содержимого при изменении файлов
    },
  },
}
