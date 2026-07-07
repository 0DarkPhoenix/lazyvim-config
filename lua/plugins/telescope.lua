local exclude_dirs = {
  "%.git",
  "node_modules",
  "^.*venv",
  "dist",
  "build",
  "%.next",
  "%.mypy_cache",
  "%.pytest_cache",
  ".*/%_%_pycache%_%_",
  ".*egg-info",
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
      },
    })
  end,
}

