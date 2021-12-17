inoremap <F5> <ESC>:w<CR>:! dart run %<CR>
nnoremap <F5> :w<CR>:! dart run %<CR>

autocmd FileType dart setlocal commentstring=//\ %s
