vim.keymap.set("i", "<F5>", "<ESC>:w<CR>:! dart run %<CR>")
vim.keymap.set("n", "<F5>", ":w<CR>:! dart run %<CR>")

vim.opt_local.commentstring="// %s"

