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
              excludePaths = { "build/**", "*venv/**" },
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
