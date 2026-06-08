return {
  "m4xshen/hardtime.nvim",
  lazy = false,
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {
    disable_mouse = true,
    restriction_mode = "hint",
    disabled_keys = {
      ["<Up>"] = {},
      ["<Down>"] = {},
    },
  },
}
