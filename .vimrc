call plug#begin()

	Plug 'itchyny/lightline.vim'
	Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
	Plug 'frazrepo/vim-rainbow'
	Plug 'vimwiki/vimwiki'	
	Plug 'ryanoasis/vim-devicons'
	Plug 'sheerun/vim-polyglot'
	Plug 'stevearc/vim-arduino'
  Plug 'vbe0201/vimdiscord'
  Plug 'ryanoasis/vim-devicons'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" //// General ///// "
set history=50
set ruler
set number relativenumber
set wildmenu
syntax on
set nocompatible
filetype plugin on
set mouse=a

" //// Keymaps //// "


" //// Plugins //// "

" Lightline
set laststatus=2
let g:lightline = {'colorscheme': 'deus',}

" indentLine
let g:indentLine_color_term = 239

" VimWiki
let g:vimwiki_list = [{'path': '~/Documents/Personal/Notes/VimWiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" Tex Live Preview default viewer
autocmd Filetype tex setl updatetime=10
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'pdflatex'
let g:livepreview_texinputs = '$HOME/.texmf/tex/latex'
set updatetime=5000

" Arduino
let g:arduino_dir = '/usr/share/local/arduino'
let g:arduino_home_dir = $HOME . ".arduino"
let g:arduino_build_path = "{project_dir}/build"

" //// Colors //// "
" highlight LineNr ctermfg=grey ctermbg=0


" //// Keybinds //// "

" Arduino
nnoremap <buffer> <leader>aa <cmd>ArduinoAttach<CR>
nnoremap <buffer> <leader>av <cmd>ArduinoVerify<CR>
nnoremap <buffer> <leader>au <cmd>ArduinoUpload<CR>
nnoremap <buffer> <leader>aus <cmd>ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab <cmd>ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap <cmd>ArduinoChooseProgrammer<CR>
