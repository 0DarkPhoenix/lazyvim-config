return {
  {
    "saghen/blink.cmp",
    mode = "VeryLazy",
    opts = {
      -- keymap = {
      --   -- 'super-tab' preset uses Tab to accept suggestions naturally
      --   preset = "super-tab",
      --   -- still allow Enter to accept suggestions
      --   ["<CR>"] = { "accept", "fallback" },
      -- },
      fuzzy = {
        sorts = {
          -- 1. Prioritize exact, case-sensitive matches first
          "exact",
          -- 2. Sort by fuzzy matching score
          "score",
          -- 3. Respect LSP server ordering (sortText)
          "sort_text",
          -- 4. Fallback to label name
          "label",
        },
      },
      completion = {
        ghost_text = {
          enabled = false,
        },
      },
    },
  },
}
