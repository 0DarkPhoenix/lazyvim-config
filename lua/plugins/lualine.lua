return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    opts.sections.lualine_c[3] = { "filetype", icon_only = false, separator = "", padding = { left = 1, right = 0 } }

    -- Replaces LazyVim's pretty_path with the full absolute path
    opts.sections.lualine_c[4] = {
      "filename",
      path = 1, -- 0: Filename, 1: Relative path, 2: Absolute path, 3: Absolute path with tilde
    }

    local hour_icons = {
      [1] = "󱐿",
      [2] = "󱑀",
      [3] = "󱑁",
      [4] = "󱑂",
      [5] = "󱑃",
      [6] = "󱑄",
      [7] = "󱑅",
      [8] = "󱑆",
      [9] = "󱑇",
      [10] = "󱑈",
      [11] = "󱑉",
      [12] = "󱑊",
    }
    -- local hour_icons = {
    --   [1] = "󱑋",
    --   [2] = "󱑌",
    --   [3] = "󱑍",
    --   [4] = "󱑎",
    --   [5] = "󱑏",
    --   [6] = "󱑐",
    --   [7] = "󱑑",
    --   [8] = "󱑒",
    --   [9] = "󱑓",
    --   [10] = "󱑔",
    --   [11] = "󱑕",
    --   [12] = "󱑖",
    -- }

    opts.sections.lualine_z = {
      {
        function()
          local hour = tonumber(os.date("%I")) -- 12-hour clock, 1..12
          local icon = hour_icons[hour] or "󰥔"
          return icon .. " " .. os.date("%H:%M:%S") -- 24-hour clock with seconds
        end,
        padding = { left = 1, right = 1 },
      },
    }
  end,
}
