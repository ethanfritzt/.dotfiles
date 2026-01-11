-- clangd server config 
vim.lsp.config('clangd', {
    cmd = { 'clangd-18', '--compile-commands-dir=build' },
    filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda' }
})

-- enable
vim.lsp.enable('clangd')
