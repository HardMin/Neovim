
set mouse=a
set noerrorbells

"title
set title titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)
set linespace=0
set showcmd
set showmatch

set autoindent " autoindent always ON.
set expandtab " expand tabs
set shiftwidth=4 " spaces for autoindenting
set smartindent

set number
set rnu
set numberwidth=4
set background=dark

set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8

set cursorline
set hidden

set colorcolumn=130
highlight ColoColumn ctermbg=0 guibg=lightgrey

"Status bar
set laststatus=2

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}



call plug#begin('~/.local/shared/nvim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'



"VISUAL
"=================================================================================
"theme
Plug 'k4yt3x/ayu-vim-darker'
"tree
Plug 'scrooloose/nerdtree'
"Icons
Plug 'ryanoasis/vim-devicons'

"=================================================================================
" Plug 'junegunn/gv.vim'
" Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
" Plug 'junegunn/fzf.vim'


"=================================================================================
"Syntax
" Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot' 
"Estudiar bien para que sirve 
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Plug 'nikvdp/ejs-syntax'
" Plug 'mxw/vim-jsx'
" Plug 'jelera/vim-javascript-syntax'
"=================================================================================
"Snippts
Plug 'honza/vim-snippets'


"=================================================================================
"Libraries
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
"Plug 'SirVer/ultisnips'
" Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mlaursen/vim-react-snippets'
"=================================================================================

"GitSigns
" Plug 'lewis6991/gitsigns.nvim'


"=================================================================================
"Bar lighline
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
"=================================================================================




"=================================================================================
"typing
Plug 'jiangmiao/auto-pairs'
"=================================================================================



"=================================================================================
"Buffer
"=================================================================================

"Comentario
Plug 'tpope/vim-commentary'

"=================================================================================
"IDE
Plug 'easymotion/vim-easymotion'
" Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
" Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()
nnoremap <leader>t /wsxerdcfgv <CR> <C-c>














"=================================================================================
"Config syntax
let g:UtilSnippsExpandTrigger="<tab>"
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','


"Configuracion de snippets
let g:UtilSnipsExpandTrigger="<tab>"



"=================================================================================
"HTML
let g:html5_event_handler_attributes_complete = 1
let g:html5_microdata_attributes_complete = 1
let g:html5_aria_attributes_complete = 1
"=================================================================================

"Configuracion de prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <leader>d :Prettier<CR>

"Configuracion de comentario
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

"Configuracion de airline"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


"=================================================================================
"config theme
syntax enable
set termguicolors
set background=dark
let ayucolor="darker"
colorscheme ayu
"=================================================================================





"ColorPickerConfig
autocmd CursorHold * silent call CocActionAsync('highlight')
command! -nargs=0 PColor :call CocAction('pickColor')
command! -nargs=0 CPres :call CocAction('colorPresentation')



"=================================================================================
"config jsx
let g:vim_jsx_pretty_disable_js=1	"Disable the syntax highlighting for js files
let g:vim_jsx_pretty_disable_tsx=1	"Disable the syntax highlighting for tsx files
let g:vim_jsx_pretty_template_tags=['html', 'jsx']	"highlight JSX inside the tagged template string, set it to [] to disable this feature
let g:vim_jsx_pretty_highlight_close_tag=1	"highlight the close tag separately from the open tag
let g:vim_jsx_pretty_colorful_config=1
"=================================================================================






"=================================================================================
"config command
let g:mapleader = " "   
nnoremap <F5> :source % <CR>
nnoremap <leader>w :w <CR>
nnoremap <leader>q :q <CR>
"=================================================================================




"=================================================================================
"config teclas
nnoremap <Up> <nop>
nnoremap <Right> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
imap <silent><C-j> <Down>
imap <silent><C-k> <Up>
imap <silent><C-s> <C-c> :w <CR> a
"=================================================================================





"=================================================================================
"hacer un split vertical
nnoremap <leader>vs :vsp <CR>
"=================================================================================





"=================================================================================
"hacer un split horizontal
nnoremap <leader>sp :sp <CR>
"=================================================================================





"=================================================================================
"tree
let NERDTreeQuitOnOpen=1
nnoremap <silent><F2> :NERDTreeFind<CR>
nnoremap <silent><F3> :NERDTreeToggle<CR>
nnoremap <silent><F4> :NERDTreeCWD<CR>
"=================================================================================





"=================================================================================
"easymotion 
nmap <Leader>s <Plug>(easymotion-s2)
let g:EasyMotion_smartcase=1
"=================================================================================





"=================================================================================
"Panels resize
nmap <silent><leader>> <C-w>>
nmap <silent><leader>< <C-w><
"=================================================================================





"=================================================================================
"Config coc.nvim
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gi <Plug>(coc-implementacion)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gr <Plug>(coc-references)







"Config Snippts
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
"
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
"
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"

inoremap <silent><expr> <c-space> coc#refresh()

" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
nmap <leader>cl  <Plug>(coc-codelens-action)
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


imap <C-l> <Plug>(coc-snippets-expand)
" let g:coc_snippet_next = '<c-j>'
" let g:coc_snippet_prev = '<c-k>' 


"Configuracion de JavaScript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1







"=======================================================
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>




"Buffer 
noremap <leader>b :buffers<CR>
nnoremap <leader>bc :bd! <CR> 
map <leader>bh :bp<CR>
map <leader>bl :bn<CR>




"windows
nmap <leader>tn :tabnew <CR>
nmap <leader>tc :tabclose <CR>
nmap <leader>h :tabp <CR>
nmap <leader>l :tabn <CR>




"ejecutar
nnoremap <leader>x :!node % <CR>




"=================================TERMINAL NO TOCAR==
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
        "close exixting terminal
        execute "q"

    else
        "open terminal
        execute "vsp term://zsh"

        "turn off numbers
        execute "set nonu"
        execute "set nornu"

        " toggle insert on enter/exit
        "
        silent au BufLeave <buffer> stopinsert!
        silent au BufWinEnter,WinEnter <buffer> startinsert!

        "set maps inside terminal buffer
        execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
        execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
        execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

        startinsert!
    endif
endfunction

nnoremap <C-t> :call OpenTerminal()<CR>

let g:jsx_ext_required = 1

let g:jsx_pragma_required = 1
hi Normal guibg=NONE ctermbg=NONE

"autocmd VimEnter * NERDTree







"config JSX
"
" let g:vim_jsx_pretty_colorful_config = 1
" let g:vim_jsx_pretty_highlight_close_tag = 1
" let g:vim_jsx_pretty_template_tags = ['html', 'jsx', 'js']







" let g:used_javascript_libs = 'underscore,backbone,react'
" autocmd BufReadPre *.js let b:javascript_lib_use_react = 1
" autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
" autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
" autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
" autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0
