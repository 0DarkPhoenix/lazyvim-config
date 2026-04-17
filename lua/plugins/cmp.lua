return {
  {
    "saghen/blink.cmp",
    mode = "VeryLazy",
    opts = {
      keymap = {
        -- 'super-tab' preset uses Tab to accept suggestions naturally
        preset = "super-tab",
        -- still allow Enter to accept suggestions
        ["<CR>"] = { "accept", "fallback" },
      },
    },
  },
}
