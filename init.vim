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
set hidden

set colorcolumn=130
highlight ColoColumn ctermbg=0 guibg=lightgrey
set background=dark

"Status bar
set laststatus=2

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}


call plug#begin('~/.local/shared/nvim/plugged')

"theme
Plug 'Rigellute/rigel'
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'

"tree
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdtree'

"Syntax
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'emmetio/emmet'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Libraries
Plug 'maxmellon/vim-jsx-pretty'

"Bar lighline
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

"typing
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

"Buffer
Plug 'fholgado/minibufexpl.vim'
"IDE
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()
"config Neovim
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


"config theme
syntax enable
set termguicolors
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
"theme bar
"let g:airline_theme = gruvbox
"colorscheme riigel

"config jsx
let g:vim_jsx_pretty_disable_js=1	"Disable the syntax highlighting for js files
let g:vim_jsx_pretty_disable_tsx=1	"Disable the syntax highlighting for tsx files
let g:vim_jsx_pretty_template_tags=['html', 'jsx']	"highlight JSX inside the tagged template string, set it to [] to disable this feature
let g:vim_jsx_pretty_highlight_close_tag=1	"highlight the close tag separately from the open tag
let g:vim_jsx_pretty_colorful_config=1

"config command
let g:mapleader = " "   
nnoremap <F3> :source % <CR>
nnoremap <leader>w :w <CR>
nnoremap <F2> :PlugInstall <CR>

"config teclas
nnoremap <Up> <nop>
nnoremap <Right> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>

"Buffer 
nnoremap <leader>b :buffers<CR>

"hacer un split vertical
nnoremap <leader>vs :vsp <CR>

"hacer un split horizontal
nnoremap <leader>sp :sp <CR>

"Cerrar split o ventana
nnoremap <leader>q :wq!<CR>

"tree
nnoremap <leader>a :NERDTreeToggle<CR>
nnoremap <leader>ab :NERDTreeFromBookmark 

"easymotion 
nmap <Leader>s <Plug>(easymotion-s2)

"Panels resize
nnoremap <leader>> <C-w>>
nnoremap <leader>< <C-w><

"windows
nmap <leader>tf :tabnew 
nmap <leader>tc :tabclose <CR>
nmap <leader>l <C-w>l
nmap <leader>h <C-w>h
nmap <leader>k <C-w>k
nmap <leader>j <C-w>j

