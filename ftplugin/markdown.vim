lua require('cmp').setup.buffer { enabled = false } 

set textwidth=80

inoremap <F5> <ESC>:w<CR>:MarkdownPreview<CR>
nnoremap <F5> :w<CR>:MarkdownPreview<CR>

nnoremap <silent> <F12> :set spell!<cr>
inoremap <silent> <F12> <C-O>:set spell!<cr>
