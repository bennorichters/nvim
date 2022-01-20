" autocmd BufRead *.txt lua require('cmp').setup.buffer { enabled = false } 
autocmd FileType text lua require('cmp').setup.buffer { enabled = false } 
