require('cmp').setup.buffer { enabled = false }

vim.opt.textwidth = 80

vim.keymap.set('i', '<F5>', '<ESC>:w<CR>:MarkdownPreview<CR>')
vim.keymap.set('n', '<F5>', ':w<CR>:MarkdownPreview<CR>')

vim.keymap.set('i', '<F12>', '<C-O>:set spell!<CR>')
vim.keymap.set('n', '<F12>', ':set spell!<CR>')
