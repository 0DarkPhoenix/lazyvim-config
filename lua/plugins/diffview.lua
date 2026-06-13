return {
  "sindrets/diffview.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "lewis6991/gitsigns.nvim",
  },
  config = true,
  keys = {
    { "<leader>hd", "<cmd>DiffviewOpen<cr>", mode = { "n" }, desc = "Repo Diffview", nowait = true },
    { "<leader>hh", "<cmd>DiffviewFileHistory<cr>", mode = { "n" }, desc = "Repo history" },
    { "<leader>hf", "<cmd>DiffviewFileHistory --follow %<cr>", mode = { "n" }, desc = "File history" },
    { "<leader>hm", "<cmd>DiffviewOpen master<cr>", mode = { "n" }, desc = "Diff with master" },
    {
      "<leader>hl",
      "<Cmd>.DiffviewFileHistory --follow<CR>",
      mode = { "n" },
      desc = "File history for the current line",
    },
    {
      "<leader>hl",
      "<Esc><Cmd>'<,'>DiffviewFileHistory --follow<CR>",
      mode = { "v" },
      desc = "File history for the visual selection",
    },
  },
}
