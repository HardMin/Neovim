"actualizar las configuracion de nvim
nnoremap <F5> :source % <CR> 


"configuracion de flechas
map <Up> <nop>
map <Right> <nop>
map <Down> <nop>
map <Left> <nop>
map <silent><C-j> <Down>
map <silent><C-k> <Up>
map <silent><C-s> <C-c> :w <CR> a



let g:mapleader = " "


"Guardado
nnoremap <leader>w :w <CR>
nnoremap <leader>q :q <CR>
