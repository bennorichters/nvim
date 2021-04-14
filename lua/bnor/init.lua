local M = {}
M.search_dotfiles = function() 
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "$HOME/.config/nvim/",
    })
end

M.my_popup = function()
  require("popup").create(
    {'another one', 'another two', 'another three'},
    {line = 3,col = 25,minwidth = 20}
  )
end

return M
