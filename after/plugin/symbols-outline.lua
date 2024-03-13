require("symbols-outline").setup()

vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
  pattern = { "Outline" },
  callback = function()
    vim.opt.spell = false
  end
})
