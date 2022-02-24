inoremap <F5> <ESC>:w<CR>:MarkdownPreview<CR>
nnoremap <F5> :w<CR>:MarkdownPreview<CR>

lua require('cmp').setup.buffer { enabled = false } 

set textwidth=80
