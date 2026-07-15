return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    view_options = {
      show_hidden = true,
    },
  },
  keys = {
    { "<leader>e", "<cmd>Oil<cr>", desc = "Open Oil file explorer" },
  },
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  lazy = false,
}