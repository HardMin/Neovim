let mapleader = " "

" nnoremap <leader>w :Prettier <CR> :w <CR>
map <F8> :source % <CR>
nnoremap <leader>w :w <CR>
nnoremap <leader>q :q <CR>
nnoremap <C-z> :x! <CR>

" nnoremap <leader>t :vsp <CR> :terminal<CR>
  
" Python Run
nnoremap <leader>xp :pyfile %<CR>

" JavaScript Run
nnoremap <leader>xj :!node %<CR>


nnoremap <leader>vs :vsp<CR>
nnoremap <leader>sp :sp<CR>
nnoremap <leader>l <C-w>l
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k

nnoremap <leader>b :bd! <CR>

" Explorer
nnoremap <leader>e  <Cmd>CocCommand explorer<CR>

" Tabs

" nnoremap <C-L> :tabnext <CR>
" nnoremap <C-H> :tabprevious <CR>
nnoremap <C-q> :tabclose <CR>

" Terminal
set splitright
function! OpenTerminal()
  " move to right most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")


  if bufType == "terminal"
    "Close existing terminal
    execute "q"
  else 
    "Open terminal
    execute "vsp term://zsh"

    "turn off numbers
    execute "set nonu"
    execute "set nornu"
    
    " toggle insert on enter/existing
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffe> startinsert!

    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!

  endif
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>

