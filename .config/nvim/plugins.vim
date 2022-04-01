call plug#begin('~/.local/share/nvim/site/plugged')
  
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim' " file finder
  Plug 'vimwiki/vimwiki'	 
  Plug 'itchyny/lightline.vim' 
  Plug 'lervag/vimtex' "tex support
  Plug 'akinsho/toggleterm.nvim' "terminal
 " Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocomplete
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'ryanoasis/vim-devicons'
  Plug 'stevearc/vim-arduino'
  Plug 'wakatime/vim-wakatime'
  Plug 'andweeb/presence.nvim'

call plug#end()


" # // VimWiki
let g:vimwiki_list = [{'path': '~/Documents/Personal/Notes/VimWiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" # // Lightline
set laststatus=2
let g:lightline = {'colorscheme': 'deus',}


" # // Vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
" let g:vimtex_quickfix_mode=0
" let g:vimtex_delim_stopline=2500
let g:vimtex_compiler_progname = 'nvr'
" figure keybindings
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>

" # // ToggleTerm
let g:toggleterm_terminal_mapping = '<C-t>'
" or manually...
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <leader>tt <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <leader>tt <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" # // Presence
" General options
let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "The One True Text Editor"
let g:presence_main_image          = "neovim"
let g:presence_client_id           = "793271441293967371"
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 0
let g:presence_blacklist           = []
let g:presence_buttons             = 1
let g:presence_file_assets         = {}

" Rich Presence text options
let g:presence_editing_text        = "Editing %s"
let g:presence_file_explorer_text  = "Browsing %s"
let g:presence_git_commit_text     = "Committing changes"
let g:presence_plugin_manager_text = "Managing plugins"
let g:presence_reading_text        = "Reading %s"
let g:presence_workspace_text      = "Working on %s"
let g:presence_line_number_text    = "Line %s out of %s"
