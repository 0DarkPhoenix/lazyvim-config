return {
  "folke/snacks.nvim",
  mode = "VeryLazy",
  opts = {
    picker = {
      sources = {
        files = {
          hidden = true,
          ignored = false,
        },
        explorer = {
          hidden = true,
          ignored = true,
        },
        grep = {
          hidden = true,
          ignored = false,
        },
        notifications = {
          win = {
            preview = {
              wo = {
                wrap = true,
              },
            },
          },
        },
      },
    },
    scroll = {
      enabled = false,
    },
  },
}
