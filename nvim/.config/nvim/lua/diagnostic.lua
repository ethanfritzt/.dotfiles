--vim.keymap.set('n', '<Leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>')

-- open diagnostic float on hover
vim.o.updatetime = 250  -- faster hover (default is 4000ms)

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, {
      focus = false,
      scope = "cursor",
    })
  end,
})
