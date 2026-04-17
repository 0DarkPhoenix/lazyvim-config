-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Use invisible non-breaking space character for trailing whitespace instead of "-"
vim.opt.listchars:append({ trail = "\u{00A0}" })
vim.opt.list = true