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

    -- Helper function to run code actions synchronously
    local function sync_code_action(action)
      local params = vim.lsp.util.make_range_params()
      params.context = { only = { action }, diagnostics = {} }
      local results = vim.lsp.buf_request_sync(bufnr, "textDocument/codeAction", params, 1000)

      if not results then
        return
      end
      for _, res in pairs(results) do
        for _, r in pairs(res.result or {}) do
          if r.edit then
            vim.lsp.util.apply_workspace_edit(r.edit, client.offset_encoding)
          elseif type(r.command) == "table" then
            vim.lsp.buf.execute_command(r)
          end
        end
      end
    end

    -- Biome: fixAll on save
    if client.name == "biome" then
      local group = vim.api.nvim_create_augroup("BiomeFixAll_" .. bufnr, { clear = true })

      vim.api.nvim_create_autocmd("BufWritePre", {
        group = group,
        buffer = bufnr,
        callback = function()
          sync_code_action("source.fixAll.biome")
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
          sync_code_action("source.fixAll")
          sync_code_action("source.organizeImports")
        end,
      })

      -- Optional: ensure rustfmt runs too (if rust-analyzer formatting is enabled)
      --   group = group,
      --   buffer = bufnr,
      --   callback = function()
      --     vim.lsp.buf.format({ bufnr = bufnr, async = false })
      --   end,
      -- })
    end
  end,
})
