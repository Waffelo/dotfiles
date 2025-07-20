" Base ------------------
inoremap <C-Enter> <C-o>o
inoremap <S-Enter> <C-o>O

" move in insert mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" clears selection
nnoremap <silent> <Esc> :nohlsearch<CR><Esc>

" NerdTree ---------------
nnoremap <A-e> :NERDTreeToggle<CR>



" Telecope ---------------
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" --- BarBar ------------------------------
hi BufferApageFill ctermbg=black

noremap <silent>    <S-a> <Cmd>enew<CR>

" Move to previous/next
nnoremap <silent>    <S-h> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <S-l> <Cmd>BufferNext<CR>

" Re-order to previous/next
nnoremap <silent>    <S-j> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <S-k> <Cmd>BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <S-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <S-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <S-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <S-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <S-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <S-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <S-7> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <S-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <S-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <S-0> <Cmd>BufferLast<CR>

" Pin/unpin buffer
nnoremap <silent>    <C-p> <Cmd>BufferPin<CR>

" Goto pinned/unpinned buffer
"                          :BufferGotoPinned
"                          :BufferGotoUnpinned

" Close buffer
nnoremap <silent>    <C-c> <Cmd>BufferClose!<CR>
" Restore buffer
nnoremap <silent>    <C-s-c> <Cmd>BufferRestore<CR>

" Wipeout buffer
"                          :BufferWipeout
" Close commands
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButVisible
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight

" Magic buffer-picking mode
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>
nnoremap <silent> <C-s-p>  <Cmd>BufferPickDelete<CR>

" Sort automatically by...
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bn <Cmd>BufferOrderByName<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used
