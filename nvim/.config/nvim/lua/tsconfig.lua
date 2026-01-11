-- prettier formatting
-- formats the file and preserves the cursor
local format_sync_grp = vim.api.nvim_create_augroup("Format", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.json" },
  callback = function()
    local view = vim.fn.winsaveview()
    vim.cmd("%!prettier --stdin-filepath " .. vim.fn.shellescape(vim.fn.expand("%")))
    vim.fn.winrestview(view)
  end,
  group = format_sync_grp,
})

-- ts language server config 
vim.lsp.config('ts_ls', {
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
})

-- enable
vim.lsp.enable('ts_ls')
