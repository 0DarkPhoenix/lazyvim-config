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
      -- biome = {
      --   cmd = { "biome", "lsp-proxy" },
      --   root_dir = require("lspconfig.util").root_pattern("biome.json", "package.json"),
      --   single_file_support = true,
      -- },
    },
  },
}

