lua require'lspconfig'.jsonls.setup{}
lua require'lspconfig'.html.setup{}
lua require'lspconfig'.vuels.setup{}

" Typescript
lua <<EOF
local nvim_lsp = require("lspconfig")

nvim_lsp.tsserver.setup {
    on_attach = function(client, bufnr)
        local ts_utils = require("nvim-lsp-ts-utils")

        ts_utils.setup{} 

        -- required to enable ESLint code actions and formatting
        ts_utils.setup_client(client)
    end
}
EOF
inoremap <F5> <ESC>:w<CR>:! ts-node --transpile-only %<CR>
nnoremap <F5> :w<CR>:! ts-node --transpile-only %<CR>

