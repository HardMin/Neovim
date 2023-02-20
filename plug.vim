if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'


Plug 'sheerun/vim-polyglot'

" Plug 'HardMin/neovim-nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
   
 "Lualine bar state
Plug 'hoob3rt/lualine.nvim'

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

            
Plug 'tpope/vim-commentary'
"
" Interlineado
" Plug 'yggdroot/indentline'


Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'

Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'


Plug 'xiyaowong/nvim-transparent'

" Theme
Plug 'ghifarit53/tokyonight-vim'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Plug 'mhinz/vim-signify'

call plug#end()
