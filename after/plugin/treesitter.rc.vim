if !exists('g:loaded_nvim_treesitter')
  finish
endif

lua << EOF
require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disble = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "fish",
    "html",
    "css",
    "scss",
    "php",
    "json",
  }
}
