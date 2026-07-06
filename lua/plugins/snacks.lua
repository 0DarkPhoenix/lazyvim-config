local exclude_dirs = {
  ".git",
  "node_modules",
  "*venv",
  "dist",
  "build",
  ".next",
  ".mypy_cache",
  ".pytest_cache",
  "**/__pycache__",
  "*.egg-info",
}

return {
  "folke/snacks.nvim",
  event = "VeryLazy",
  opts = {
    picker = {
      sources = {
        files = {
          hidden = true,
          ignored = true,
          exclude = exclude_dirs,
        },
        explorer = {
          hidden = true,
          ignored = true,
        },
        grep = {
          hidden = true,
          ignored = true,
          exclude = exclude_dirs,
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
