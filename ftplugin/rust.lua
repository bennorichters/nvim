vim.keymap.set('i', '<F5>', '<ESC>:w<CR>:sp<CR>:term cargo run --bin %:t:r<CR>')
vim.keymap.set('n', '<F5>', ':w<CR>:sp<CR>:term cargo run --bin %:t:r<CR>')

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('n', '<F9>', ':bd!<CR>')
