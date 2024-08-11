set colorcolumn=73 " Visually indicate where text will wrap
highlight ColorColumn ctermbg=235
highlight Visual cterm=reverse ctermbg=0 ctermfg=NONE

set autoindent   " Auto-indent
set expandtab    " Expand tabs to spaces
set shiftwidth=2 " No of spaces to Auto-indent by
set tabstop=2    " No of spaces to insert when tab is pressed
set textwidth=72

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
