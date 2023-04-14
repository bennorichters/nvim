vim.cmd("colorscheme kanagawa")

function change_color_theme()
  current = require('kanagawa')._CURRENT_THEME
  if (current == 'wave') then
    vim.cmd("colorscheme kanagawa-dragon")
  elseif (current == 'dragon') then
    vim.cmd("colorscheme kanagawa-lotus")
  else 
    vim.cmd("colorscheme kanagawa-wave")
  end
end

vim.keymap.set('n', '<leader>c', ':lua change_color_theme()<CR>')

