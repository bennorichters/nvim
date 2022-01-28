inoremap <F5> <ESC>:w<CR>:! python %<CR>
nnoremap <F5> :w<CR>:! python %<CR>

lua << EOF
-- require'lspconfig'.pyright.setup{}

require'lspconfig'.jedi_language_server.setup{}
EOF
