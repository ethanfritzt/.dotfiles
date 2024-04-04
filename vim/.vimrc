" doesn't try and act like vi
set nocompatible

" allow backspacing always in insert mode
set backspace=indent,eol,start

" vim-plug
call plug#begin()
filetype plugin indent on
filetype plugin on

" plugins go here
" prettier/vim-prettier
Plug 'prettier/vim-prettier'

" end vim-plug
call plug#end()

" prettier settings
let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0

" netrw settings
let g:netrw_winsize = 30
let g:netrw_liststyle = 3
let g:netrw_sort_sequence = '[\/]$,*'
let g:netrw_browse_split = 0

" syntax highlighting
syntax enable

" colorscheme
" regex in catch is from :help catch
" E185 is the error on colorscheme
" check :help E185 or :help colorscheme
try 
    colorscheme retrobox
catch /^Vim\%((\a\+)\)\=:E185:/
    colorscheme default
endtry

" set line numbers
set nu

" colors line numbers for visibility
highlight LineNr ctermfg=grey

" indent config
filetype indent on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" search
set hlsearch
set ignorecase
set smartcase

" set the dir/s to ignore
set wildignore+=**/node_modules/**,package-lock.*,.git,tags

" status bar
" 0 = never show, 1 = show for multiple windows, 2 = always show
set laststatus=2 
set ruler

" tags
set tags=./tags,tags;/

" fold
set foldmethod=marker
set foldmarker=#region,#endregion

" mappings
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

