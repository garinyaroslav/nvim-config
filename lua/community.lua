-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.icon/mini-icons" },
  { import = "astrocommunity.recipes.neovide" },
  { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.search.grug-far-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
}
