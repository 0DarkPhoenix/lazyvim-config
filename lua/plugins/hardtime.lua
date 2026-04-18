return {
  "m4xshen/hardtime.nvim",
  mode = "VeryLazy",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {
    disable_mouse = true,
    disabled_keys = {
      ["<Up>"] = {},
      ["<Down>"] = {},
    },
  },
}
