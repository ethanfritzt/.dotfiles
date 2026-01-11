vim.cmd("set rnu")

vim.cmd.colorscheme("habamax")

vim.cmd("set laststatus=2")

vim.cmd("syntax enable")

-- set path for fuzzy finder
vim.cmd("set path+=**")

vim.opt.wildignore:append({
  "./node_modules/*",
  ".git/*",
})

-- set tab rules
vim.cmd([[
    set tabstop=4
    set shiftwidth=4
    set expandtab
]])

-- width of netrw window through :Lex
vim.api.nvim_create_autocmd("Filetype", {
    pattern = "netrw",
    callback = function()
        vim.cmd("vertical resize 40")
    end,
})


-- machine specific
require("diagnostic")
require("tsconfig")
require("clangd")

-- use ripgrep
vim.opt.grepprg = "rg --vimgrep"
vim.opt.grepformat = "%f:%l:%c:%m"
