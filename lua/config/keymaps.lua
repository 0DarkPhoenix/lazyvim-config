-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap yanking keys to use the blackhole register
vim.keymap.set({ "n", "v" }, "d", '"_d', { noremap = true })
vim.keymap.set({ "n", "v" }, "c", '"_c', { noremap = true })
vim.keymap.set({ "n", "v" }, "x", '"_x', { noremap = true })

-- Center lines on vertical movement
vim.opt.scrolloff = 999

-- Copy relative path with line number to clipboard
vim.keymap.set("n", "<leader>yl", function()
  local path = vim.fn.fnamemodify(vim.fn.expand("%"), ":~:.")
  local line_num = vim.fn.line(".")
  vim.fn.setreg("+", path .. ":" .. line_num)
  vim.notify("Copied to clipboard: " .. path .. ":" .. line_num)
end, { desc = "Copy relative path + line number" })

