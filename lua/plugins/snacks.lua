return {
  "folke/snacks.nvim",
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
  },
}