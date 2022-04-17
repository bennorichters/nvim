inoremap <F5> <ESC>:w<CR>:sp<CR>:term cargo run --bin %:t:r<CR>
nnoremap <F5> :w<CR>:sp<CR>:term cargo run --bin %:t:r<CR>

tnoremap <Esc> <C-\><C-n>
nnoremap <F9> :bd!<CR>
