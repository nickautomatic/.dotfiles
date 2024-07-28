set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin()

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()
