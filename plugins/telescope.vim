nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>fk <cmd>lua require('telescope.builtin').keymaps()<cr>

nnoremap <leader>fd :lua require('bnor').search_dotfiles()<CR>

lua require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules"} } }
