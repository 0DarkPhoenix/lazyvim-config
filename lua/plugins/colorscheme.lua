return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    style = "moon",
    on_highlights = function(highlights)
      highlights.LineNrAbove = { fg = "#dddddd" }
      highlights.LineNrBelow = { fg = "#dddddd" }
    end,
  },
}
