return {
  "neovim/nvim-lspconfig",
  mode = "VeryLazy",
  opts = {
    servers = {
      pyright = {
        settings = {
          python = {
            analysis = {
              packageIndexDepth = 2,
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              exclude = {
                ".git",
                "*venv",
                "dist",
                "build",
                ".mypy_cache",
                ".pytest_cache",
                "**/__pycache__",
                "*.egg-info",
              },
            },
          },
        },
      },
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            check = {
              command = "clippy",
              extraArgs = {
                "--fix",
                "--allow-dirty",
              },
            },
          },
        },
      },
    },
  },
}
