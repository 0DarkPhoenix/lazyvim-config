return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.sections.lualine_c[3] = { "filetype", icon_only = false, separator = "", padding = { left = 1, right = 0 } }

    -- Replace LazyVim's pretty_path with the full absolute path
    opts.sections.lualine_c[4] = {
      "filename",
      path = 1, -- 0: Filename, 1: Relative path, 2: Absolute path, 3: Absolute path with tilde
    }

    opts.sections.lualine_y = {
      {
        function()
          return vim.fn.line(".") .. "/" .. vim.fn.line("$")
        end,
        padding = { left = 1, right = 1 },
      },
    }
  end,
}
