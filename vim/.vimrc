" doesn't try and act like vi
set nocompatible

set backspace=indent,eol,start

" vim-plug
call plug#begin()
filetype plugin indent on
filetype plugin on

" add plugins before this line
call plug#end()

" syntax highlighting
syntax enable

" colorscheme
colorscheme desert

" set line numbers (relative)
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

nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" status bar
set laststatus=2 " 0 = never show, 1 = show for multiple windows, 2 = always show
set ruler

" netrw
inoremap <c-k> <Esc>:Lex<cr>
nnoremap <c-k> <Esc>:Lex<cr>
let g:netrw_winsize = -28
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_sort_sequence = '[\/]$,*'
let g:netrw_browse_split = 4
" Close after opening a file (which gets opened in another window):
let g:netrw_fastbrowse = 0
autocmd FileType netrw setl bufhidden=wipe
function! CloseNetrw() abort
  for bufn in range(1, bufnr('$'))
    if bufexists(bufn) && getbufvar(bufn, '&filetype') ==# 'netrw'
      silent! execute 'bwipeout ' . bufn
      if getline(2) =~# '^" Netrw '
        silent! bwipeout
      endif
      return
    endif
  endfor
endfunction
augroup closeOnOpen
  autocmd!
  autocmd BufWinEnter * if getbufvar(winbufnr(winnr()), "&filetype") != "netrw"|call CloseNetrw()|endif
aug END
