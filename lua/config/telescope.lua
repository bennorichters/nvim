vim.keymap.set('n', '<Leader>ff', ':Telescope find_files<cr>')
vim.keymap.set('n', '<Leader>fg', ':Telescope find_grep<cr>')
vim.keymap.set('n', '<Leader>fb', ':Telescope buffers<cr>')
vim.keymap.set('n', '<Leader>fh', ':Telescope help_tags<cr>')
vim.keymap.set('n', '<Leader>fk', ':lua require("telescope.builtin").keymaps()<cr>')

vim.keymap.set('n', '<Leader>fd', ':lua require("bnor").search_dotfiles()<cr>')

require('telescope').setup {
  defaults = {
    file_ignore_patterns = { "node_modules" }
  }
}
