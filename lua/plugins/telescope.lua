local path_sep = "[/\\]"

local ignored_paths = {
  ".git",
  "node_modules",
  "venv",
  ".venv",
  "dist",
  "build",
  ".next",
  ".mypy_cache",
  ".pytest_cache",
  "**/__pycache__",
  "**/*.egg-info",
}

local function to_fast_ignore_glob(path)
  return "!" .. path .. "/**"
end

local function to_exclude_dir_pattern(path)
  local any_depth = path:sub(1, 3) == "**/"
  local leaf = any_depth and path:sub(4) or path

  local escaped = leaf
    :gsub("%%", "%%%%")
    :gsub("%.", "%%.")
    :gsub("%-", "%%%-")
    :gsub("%+", "%%+")
    :gsub("%?", "%%?")
    :gsub("%^", "%%^")
    :gsub("%$", "%%$")
    :gsub("%(", "%%(")
    :gsub("%)", "%%)")
    :gsub("%[", "%%[")
    :gsub("%]", "%%]")
    :gsub("%*", ".*")

  if any_depth then
    return ".*" .. path_sep .. escaped .. path_sep .. ".*"
  end

  return escaped .. path_sep .. ".*"
end

local fast_ignore_globs = {}
local exclude_dirs = {}
local fd_ignore_args = {}

for _, path in ipairs(ignored_paths) do
  local leaf = path:match("([^/\\]+)$") or path

  vim.list_extend(fast_ignore_globs, { "--glob", to_fast_ignore_glob(path) })
  table.insert(exclude_dirs, to_exclude_dir_pattern(path))
  vim.list_extend(fd_ignore_args, { "--exclude", leaf })
end

local function rg_args(base)
  local args = {}
  vim.list_extend(args, base)
  vim.list_extend(args, fast_ignore_globs)
  return args
end

local function fd_args(base)
  local args = {}
  vim.list_extend(args, base)
  vim.list_extend(args, fd_ignore_args)
  return args
end

local has_fd = vim.fn.executable("fd") == 1

return {
  "nvim-telescope/telescope.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        file_ignore_patterns = exclude_dirs,
        vimgrep_arguments = rg_args({
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
          "--no-ignore",
          "--follow",
        }),
      },
      pickers = {
        find_files = {
          hidden = true,
          no_ignore = true,
          find_command = fd_args({
            "fd",
            "--type",
            "f",
            "--hidden",
            "--follow",
            "--strip-cwd-prefix",
          })
        },
        live_grep = {
          additional_args = function()
            return rg_args({
              "--hidden",
              "--no-ignore",
              "--follow",
            })
          end,
        },
      },
    })

    pcall(telescope.load_extension, "fzf")
  end,
}