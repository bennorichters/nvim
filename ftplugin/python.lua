vim.keymap.set('i', '<F5>', '<ESC>:w<CR>:sp<CR>:term python %<CR>')
vim.keymap.set('n', '<F5>', ':w<CR>:sp<CR>:term python %<CR>')

vim.keymap.set('i', '<F6>', '<ESC>:w<CR>:sp<CR>:term python -m unittest<CR>')
vim.keymap.set('n', '<F6>', ':w<CR>:sp<CR>:term python -m unittest<CR>')

vim.keymap.set('n', '<F9>', ':bd!<CR>')
