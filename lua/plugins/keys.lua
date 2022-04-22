vim.keymap.set('n', '<leader>d', '"_d')

vim.keymap.set('n', '<leader>n', ':cn<CR>')
vim.keymap.set('n', '<leader>p', ':cp<CR>')

vim.keymap.set('n', '<c-right>', ':bnext<CR>')
vim.keymap.set('n', '<c-left>', ':bprevious<CR>')

vim.keymap.set('n', '<c-s>', ':update<CR>')
vim.keymap.set('i', '<c-s>', '<c-o>:update<CR>')

vim.keymap.set('n', '<leader>y', '"*y')
vim.keymap.set('v', '<leader>y', '"*y')
