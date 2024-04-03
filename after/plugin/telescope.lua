vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<cr>")
vim.keymap.set("n", "<Leader>fg", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<Leader>fb", ":Telescope buffers<cr>")
vim.keymap.set("n", "<Leader>fh", ":Telescope help_tags<cr>")
vim.keymap.set("n", "<Leader>fk", ":lua require('telescope.builtin').keymaps()<cr>")

vim.keymap.set("n", "<leader>fd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })

vim.keymap.set("n", "<leader>/", function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = "[/] Fuzzily search in current buffer]" })


require("telescope").setup {
  defaults = {
    file_ignore_patterns = { "node_modules" }
  }
}
