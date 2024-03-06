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
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" end vim-plug
call plug#end()

" syntax highlighting
syntax enable

" colorscheme
colorscheme retrobox

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

" netrw
let g:netrw_winsize = 30
let g:netrw_liststyle = 3
let g:netrw_sort_sequence = '[\/]$,*'
let g:netrw_browse_split = 0

" mappings
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
