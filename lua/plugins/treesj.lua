return {
  "Wansmer/treesj",
  mode = "VeryLazy",
  keys = { "<space>m" },
  dependencies = { "nvim-treesitter/nvim-treesitter" }, -- if you install parsers with `nvim-treesitter`
  config = function()
    require("treesj").setup({--[[ your config ]]
    })
  end,
}
