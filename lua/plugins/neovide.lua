if not vim.g.neovide then
  return {} -- do nothing if not in a Neovide session
end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = { -- configure vim.opt options
        -- configure font
        guifont = "FiraCode_Nerd_Font:h14:b",
        -- line spacing
        linespace = 0,
      },
      g = { -- configure vim.g variables
        neovide_cursor_animation_length = 0.02,
        neovide_cursor_trail_size = 0,
        neovide_hide_mouse_when_typing = true,
        neovide_refresh_rate = 144,
        -- configure scaling
        neovide_scale_factor = 0.9,
        -- configure padding
        neovide_padding_top = 0,
        neovide_padding_bottom = 0,
        neovide_padding_right = 0,
        neovide_padding_left = 0,
      },
    },
  },
}
