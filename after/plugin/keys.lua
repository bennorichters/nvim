vim.keymap.set('n', '<leader>d', '"_d')

vim.keymap.set('n', '<leader>n', ':cn<CR>')
vim.keymap.set('n', '<leader>p', ':cp<CR>')

vim.keymap.set('n', '<m-right>', ':bnext<CR>')
vim.keymap.set('n', '<m-left>', ':bprevious<CR>')

vim.keymap.set('n', '<c-s>', ':update<CR>')
vim.keymap.set('i', '<c-s>', '<c-o>:update<CR>')

vim.keymap.set('n', '<leader>y', '"*y')
vim.keymap.set('v', '<leader>y', '"*y')

vim.keymap.set('n', '<leader>m', ':lua vim.lsp.buf.format()<CR>')

vim.keymap.set('n', '<CR>', 'ciw')

vim.keymap.set('n', '<leader>r', '<Plug>RestNvim')
vim.keymap.set('n', '<leader>t', '<Plug>RestNvimPreview')

vim.keymap.set('n', '<leader>g', ":lua require('bnor').ai_improve_grammar()<CR>")
