return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  opts = {
    compile = false,
    colors = {
      palette = {
        -- sumiInk0 = "#2a2a37", a.k.a bg_m3 -> bg_p1
        -- sumiInk3 = "#2a2a37", a.k.a bg -> bg_p1
      },
    },
    overrides = function(colors) -- add/modify highlights
      local theme = colors.theme
      return {
        LineNrAbove = { fg = theme.ui.fg, bg = theme.ui.bg_gutter },
        LineNrBelow = { fg = theme.ui.fg, bg = theme.ui.bg_gutter },
        StatusLine = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p1 },
        -- TelescopeBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.bg_p1 },
        -- TabLineFill = { bg = theme.ui.bg_p1 },
        -- MsgSeparator = { bg = vim.o.cmdheight == 0 and theme.ui.bg_p1 or theme.ui.bg_m3, fg = theme.ui.bg_m3 },
        -- EndOfBuffer = { fg = theme.ui.bg_p1 },
        -- Cursor = { fg = theme.ui.bg_p1, bg = theme.ui.fg },
      }
    end,
  },
  config = function(_, opts)
    require("kanagawa").setup(opts)
    vim.cmd("colorscheme kanagawa")
  end,
}
-- return {
--   "tiagovla/tokyodark.nvim",
--   lazy = false,
--   opts = {
--     gamma = 1.1,
--     custom_palette = {
--       bg4 = "#7b818a",
--       fg = "#808ece",
--     },
--     custom_highlights = {
--       MatchParen = { fg = "#ffffff" },
--     },
--   },
--   config = function(_, opts)
--     require("tokyodark").setup(opts)
--     vim.cmd("colorscheme tokyodark")
--   end,
-- }

-- return {
--   "folke/tokyonight.nvim",
--   lazy = true,
--   opts = {
--     style = "night",
--     on_highlights = function(highlights)
--       highlights.LineNrAbove = { fg = "#dddddd" }
--       highlights.LineNrBelow = { fg = "#dddddd" }
--     end,
--   },
-- }
