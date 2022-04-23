vim.keymap.set('i', '<F5>', '<ESC>:w<CR>:sp<CR>:term python %<CR>')
vim.keymap.set('n', '<F5>', ':w<CR>:sp<CR>:term python %<CR>')

vim.keymap.set('n', '<F9>', ':bd!<CR>')
