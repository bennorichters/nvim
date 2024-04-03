require"lspconfig".jsonls.setup{}
require"lspconfig".html.setup{}
require"lspconfig".vuels.setup{}

local nvim_lsp = require("lspconfig")

nvim_lsp.tsserver.setup {
    on_attach = function(client, bufnr)
        local ts_utils = require("nvim-lsp-ts-utils")

        ts_utils.setup{} 

        -- required to enable ESLint code actions and formatting
        ts_utils.setup_client(client)
    end
}

vim.keymap.set("i", "<F5>", "<ESC>:w<CR>:! ts-node --transpile-only %<CR>")
vim.keymap.set("n", "<F5>", ":w<CR>:! ts-node --transpile-only %<CR>")
