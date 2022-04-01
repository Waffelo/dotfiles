"# // Tabs managment
noremap tu :tabe<CR>
noremap tU :tab split<CR>
" Move around the tabtis
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>
" Move the tabs
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>

"# // Telescope File Explorer
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

