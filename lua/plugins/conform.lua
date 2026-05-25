return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      -- Ruff
      python = { "ruff_fix", "ruff_organize_imports", "ruff_format" },

      -- Biome
      javascript = { "biome-check", "biome" },
      typescript = { "biome-check", "biome" },
      javascriptreact = { "biome-check", "biome" },
      typescriptreact = { "biome-check", "biome" },
      json = { "biome-check", "biome" },
      jsonc = { "biome-check", "biome" },

      -- Rust
      -- NOTE: linter fixes and import organization are handled by rust-analyzer in autocmds.lua
      rust = { "rustfmt" },
    },
  },
}

