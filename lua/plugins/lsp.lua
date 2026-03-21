return {
  "neovim/nvim-lspconfig",
 opts = {
      servers = {
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
