let g:symbols_outline = {
      \ "highlight_hovered_item": v:true,
      \ "show_guides": v:true,
      \ "position": 'right',
      \ "auto_preview": v:false,
      \ "keymaps": {
        \ "close": "<Esc>",
        \ "goto_location": "<Cr>",
        \ "focus_location": "o",
        \ "hover_symbol": "<C-space>",
        \ "rename_symbol": "r",
        \ "code_actions": "a",
        \ },
        \ "lsp_blacklist": [],
        \ }

nnoremap <leader>o <cmd>SymbolsOutline<CR>

