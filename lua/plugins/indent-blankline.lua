return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  -- dependencies = {
  -- "HiPhish/rainbow-delimiters.nvim",
  -- },
  opts = function()
    local highlight = {
      "RainbowViolet",
      "RainbowIndigo",
      "RainbowBlue",
      "RainbowGreen",
      "RainbowYellow",
      "RainbowOrange",
      "RainbowRed",
    }

    local hooks = require("ibl.hooks")

    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#d64a4a" })
      vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#fca400" })
      vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#ffd700" })
      vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#45be45" })
      vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#456bd3" })
      vim.api.nvim_set_hl(0, "RainbowIndigo", { fg = "#da70d6" })
      vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#9052bd" })
    end)

    return {
      indent = {
        highlight = highlight,
        char = "│",
        tab_char = "│",
      },
    }
  end,
}
