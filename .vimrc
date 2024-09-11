set textwidth=72   " Autowrap to a new line after 72 characters
set colorcolumn=+1 " Visually indicate where text will wrap
set cursorline
highlight ColorColumn ctermbg=235
highlight Visual cterm=reverse ctermbg=0 ctermfg=NONE

set autoindent   " Auto-indent
set expandtab    " Expand tabs to spaces
set shiftwidth=2 " No of spaces to Auto-indent by
set tabstop=2    " No of spaces to insert when tab is pressed

set number
set relativenumber

set ignorecase
set smartcase
set incsearch

syntax on

nmap Q <Nop>
set backspace=indent,eol,start
set hidden
set laststatus=2
set mouse+=a
set nocompatible
set noerrorbells visualbell t_vb=
set shortmess+=I

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
