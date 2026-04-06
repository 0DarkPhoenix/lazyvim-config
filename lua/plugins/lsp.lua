return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        settings = {
          python = {
            analysis = {
              packageIndexDepth = 2,
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
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
