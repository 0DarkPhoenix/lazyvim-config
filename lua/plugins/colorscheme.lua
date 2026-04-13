return {
  "tiagovla/tokyodark.nvim",
  opts = {
    gamma = 1.1,
    custom_palette = {
      bg4 = "#7b818a",
      fg = "#808ece",
    },
    custom_highlights = {
      MatchParen = { fg = "#ffffff" },
    },
  },
  config = function(_, opts)
    require("tokyodark").setup(opts)
    vim.cmd("colorscheme tokyodark")
  end,
}
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
