" Disable MacVim save shortcut
macmenu File.Save key=<nop>

" Exit to Normal mode upon [Cmd+S]
inoremap <D-s> <Esc>:w<CR><Right>
vnoremap <D-s> <Esc>:w<CR>

" Save in Normal mode (block Substitute)
nnoremap <D-s> :w<CR>
