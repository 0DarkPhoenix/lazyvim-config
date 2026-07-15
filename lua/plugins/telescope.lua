local path_sep = "[/\\]"

local exclude_dirs = {
  "%.git" .. path_sep .. ".*",
  "node_modules" .. path_sep .. ".*",
  "^.*" .. path_sep .. "venv" .. path_sep .. ".*",
  "dist" .. path_sep .. ".*",
  "build" .. path_sep .. ".*",
  "%.next" .. path_sep .. ".*",
  "%.mypy_cache" .. path_sep .. ".*",
  "%.pytest_cache" .. path_sep .. ".*",
  ".*" .. path_sep .. "%_%_pycache%_%_" .. path_sep .. ".*",
  ".*egg%-info",
}

return {
  "nvim-telescope/telescope.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = exclude_dirs,
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
          "--no-ignore",
        },
      },
      pickers = {
        find_files = {
          hidden = true,
          no_ignore = true,
        },
        live_grep = {
          additional_args = function()
            return { "--hidden", "--no-ignore" }
          end,
        },
      },
      -- Configure extension-specific Telescope options here if the extension supports them.
      -- extensions = {
      --   projects = { ... },
      -- },
    })
  end,
}
