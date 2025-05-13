" --- Different config files
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/keybinds.vim

" --- General settings
set nocompatible

colorscheme habamax
let g:airline_theme='hybrid'

highlight Normal ctermbg=none guibg=none
highlight BufferTabpageFill ctermbg=black
highlight BufferInactive ctermbg=black

syntax on
set number
set cursorline       
set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin on
set secure

let g:my_home = $HOME

