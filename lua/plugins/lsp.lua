return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      biome = {
        settings = {
          biome = {
            linter = {
              enabled = true,
            },
            assist = {
              enabled = true,
            },
            codeAction = {
              fixAll = {
                enabled = true,
              },
            },
          },
        },
      },
    },
  },
}
