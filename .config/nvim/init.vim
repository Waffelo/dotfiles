" --- Different config files
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/keybinds.vim



" === barbar.nvim full transparency tweaks ===

" Clear general fill and separators
hi BufferLineFill guibg=NONE ctermbg=NONE
hi BufferTabpageFill guibg=NONE ctermbg=NONE
hi BufferTabpages guibg=NONE ctermbg=NONE
hi BufferTabpagesSep guibg=NONE ctermbg=NONE

" Clear statuses: Current, Visible, Inactive, Alternate
hi BufferCurrent guibg=NONE ctermbg=NONE
hi BufferCurrentMod guibg=NONE ctermbg=NONE
hi BufferCurrentSign guibg=NONE ctermbg=NONE
hi BufferCurrentIcon guibg=NONE ctermbg=NONE

hi BufferVisible guibg=NONE ctermbg=NONE
hi BufferVisibleMod guibg=NONE ctermbg=NONE
hi BufferVisibleSign guibg=NONE ctermbg=NONE
hi BufferVisibleIcon guibg=NONE ctermbg=NONE

hi BufferInactive guibg=NONE ctermbg=NONE
hi BufferInactiveMod guibg=NONE ctermbg=NONE
hi BufferInactiveSign guibg=NONE ctermbg=NONE
hi BufferInactiveIcon guibg=NONE ctermbg=NONE

hi BufferAlternate guibg=NONE ctermbg=NONE
hi BufferAlternateMod guibg=NONE ctermbg=NONE
hi BufferAlternateSign guibg=NONE ctermbg=NONE
hi BufferAlternateIcon guibg=NONE ctermbg=NONE

" Optional: Hide buffer numbers, indices, pins, etc.
hi BufferCurrentIndex guibg=NONE ctermbg=NONE
hi BufferVisibleIndex guibg=NONE ctermbg=NONE
hi BufferInactiveIndex guibg=NONE ctermbg=NONE
hi BufferAlternateIndex guibg=NONE ctermbg=NONE

hi BufferCurrentNumber guibg=NONE ctermbg=NONE
hi BufferVisibleNumber guibg=NONE ctermbg=NONE
hi BufferInactiveNumber guibg=NONE ctermbg=NONE
hi BufferAlternateNumber guibg=NONE ctermbg=NONE

hi BufferCurrentTarget guibg=NONE ctermbg=NONE
hi BufferVisibleTarget guibg=NONE ctermbg=NONE
hi BufferInactiveTarget guibg=NONE ctermbg=NONE
hi BufferAlternateTarget guibg=NONE ctermbg=NONE


" --- General settings
set nocompatible

colorscheme habamax
let g:airline_theme='hybrid'
hi Normal ctermbg=none guibg=none

syntax on
set number
set cursorline       
set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin on
set secure

let g:my_home = $HOME

