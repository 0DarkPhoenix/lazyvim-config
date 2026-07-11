return {
  "neovim/nvim-lspconfig",
  mode = "VeryLazy",
  opts = {
    servers = {
      pyrefly = {
        settings = {
          python = {
            pyrefly = {
              typeCheckingMode = "default",
              analysis = {
                inlayHints = {
                  callArgumentNames = "all",
                },
              },
            },
          },
        },
      },
      basedpyright = {
        settings = {
          basedpyright = {
            analysis = {
              typeCheckingMode = "standard", -- Options: "off", "basic", "standard", "strict", "recommended", "all"
              diagnosticMode = "openFilesOnly", -- Options: "openFilesOnly", "workspace"
              useLibraryCodeForTypes = true,
              autoSearchPaths = true,
              autoFormatString = true,
              autoImportCompletions = true,
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
              inlayHints = {
                callArgumentNames = "all",
                functionReturnTypes = true,
              },
            },
            disableOrganizeImports = true, -- Let Ruff handle imports
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
