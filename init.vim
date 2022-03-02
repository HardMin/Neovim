syntax on
set title

set mouse=a
set noerrorbells

set autoindent " autoindent always ON.
set expandtab " expand tabs
set shiftwidth=4 " spaces for autoindenting
set smartindent

set number
set rnu
set numberwidth=4

set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8

set cursorline


set colorcolumn=130
highlight ColoColumn ctermbg=0 guibg=lightgrey
set termguicolors
set background=dark

set laststatus=2
call plug#begin('~/.local/shared/nvim/plugged')

"theme
Plug 'Rigellute/rigel'
"tree
Plug 'scrooloose/nerdtree'
"Syntax
Plug 'pangloss/vim-javascript'
"Bar lighline
Plug 'vim-airline/vim-airline-themes'

"IDE
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
"config theme
syntax enable
colorscheme rigel

"config command
let g:mapleader = " "   
noremap <F3> :source % <CR>
noremap <F4> :w <CR>
"config teclas
nnoremap <Up> <nop>
nnoremap <Right> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>

"hacer un split vertical
nnoremap <leader>vs :vsp <CR>
"hacer un split horizontal
nnoremap <leader>sp :sp <CR>
"Cerrar split o ventana
nnoremap <leader>q :q <CR>
