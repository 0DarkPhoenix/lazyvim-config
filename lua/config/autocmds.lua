-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then
      return
    end

    local bufnr = args.buf

    -- Biome: fixAll on save
    if client.name == "biome" then
      local group = vim.api.nvim_create_augroup("BiomeFixAll_" .. bufnr, { clear = true })

      vim.api.nvim_create_autocmd("BufWritePre", {
        group = group,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.code_action({
            context = {
              only = { "source.fixAll.biome" },
              diagnostics = {},
            },
            apply = true,
          })
        end,
      })
    end

    -- Rust (rust-analyzer): fixAll + organizeImports on save
    if client.name == "rust_analyzer" then
      local group = vim.api.nvim_create_augroup("RustCodeActions_" .. bufnr, { clear = true })

      vim.api.nvim_create_autocmd("BufWritePre", {
        group = group,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.code_action({
            context = {
              only = { "source.fixAll", "source.organizeImports" },
              diagnostics = {},
            },
            apply = true,
          })
        end,
      })

      -- Optional: ensure rustfmt runs too (if rust-analyzer formatting is enabled)
      -- vim.api.nvim_create_autocmd("BufWritePre", {
      --   group = group,
      --   buffer = bufnr,
      --   callback = function()
      --     vim.lsp.buf.format({ bufnr = bufnr, async = false })
      --   end,
      -- })
    end
  end,
})
