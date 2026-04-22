return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "lewis6991/async.nvim",
  },
  lazy = false,
  keys = {
    {
      "<leader>re",
      function()
        return require("refactoring").extract_func()
      end,
      mode = { "n", "x" },
      desc = "Extract Function",
      expr = true,
    },
    {
      "<leader>ree",
      function()
        return require("refactoring").extract_func() .. "_"
      end,
      mode = "n",
      desc = "Extract Function (line)",
      expr = true,
    },
    {
      "<leader>rE",
      function()
        return require("refactoring").extract_func_to_file()
      end,
      mode = { "n", "x" },
      desc = "Extract Function To File",
      expr = true,
    },
    {
      "<leader>rv",
      function()
        return require("refactoring").extract_var()
      end,
      mode = { "n", "x" },
      desc = "Extract Variable",
      expr = true,
    },
    {
      "<leader>rvv",
      function()
        return require("refactoring").extract_var() .. "_"
      end,
      mode = "n",
      desc = "Extract Variable (line)",
      expr = true,
    },
    {
      "<leader>ri",
      function()
        return require("refactoring").inline_var()
      end,
      mode = { "n", "x" },
      desc = "Inline Variable",
      expr = true,
    },
    {
      "<leader>rI",
      function()
        return require("refactoring").inline_func()
      end,
      mode = { "n", "x" },
      desc = "Inline function",
      expr = true,
    },
    {
      "<leader>rs",
      function()
        return require("refactoring").select_refactor()
      end,
      mode = { "n", "x" },
      desc = "Select refactor",
    },
    {
      "<leader>pv",
      function()
        return require("refactoring.debug").print_var({ output_location = "below" }) .. "iw"
      end,
      mode = { "x", "n" },
      desc = "Debug print var below",
      expr = true,
    },
    {
      "<leader>pV",
      function()
        return require("refactoring.debug").print_var({ output_location = "above" }) .. "iw"
      end,
      mode = { "x", "n" },
      desc = "Debug print var above",
      expr = true,
    },
    {
      "<leader>pe",
      function()
        return require("refactoring.debug").print_exp({ output_location = "below" })
      end,
      mode = { "x", "n" },
      desc = "Debug print exp below",
      expr = true,
    },
    {
      "<leader>pee",
      function()
        return require("refactoring.debug").print_exp({ output_location = "below" }) .. "_"
      end,
      mode = "n",
      desc = "Debug print exp below",
      expr = true,
    },
    {
      "<leader>pE",
      function()
        return require("refactoring.debug").print_exp({ output_location = "above" })
      end,
      mode = { "x", "n" },
      desc = "Debug print exp above",
      expr = true,
    },
    {
      "<leader>pEE",
      function()
        return require("refactoring.debug").print_exp({ output_location = "above" }) .. "_"
      end,
      mode = "n",
      desc = "Debug print exp above",
      expr = true,
    },
    {
      "<leader>pP",
      function()
        return require("refactoring.debug").print_loc({ output_location = "above" })
      end,
      mode = "n",
      desc = "Debug print location",
      expr = true,
    },
    {
      "<leader>pp",
      function()
        return require("refactoring.debug").print_loc({ output_location = "below" })
      end,
      mode = "n",
      desc = "Debug print location",
      expr = true,
    },
    {
      "<leader>pc",
      function()
        return require("refactoring.debug").cleanup({ restore_view = true })
      end,
      mode = { "x", "n" },
      desc = "Debug print clean",
      expr = true,
      remap = true,
    },
  },
}
