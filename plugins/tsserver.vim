" Typescript specific
" lua require'lspconfig'.tsserver.setup{}
lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.html.setup{}
lua require'lspconfig'.vuels.setup{}

inoremap <F5> <ESC>:w<CR>:! ts-node --transpile-only %<CR>
nnoremap <F5> :w<CR>:! ts-node --transpile-only %<CR>

" LSP general
nnoremap <silent> <c-]>     <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K         <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD        <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k>     <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD       <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr        <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0        <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW        <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd        <cmd>lua vim.lsp.buf.declaration()<CR>

nnoremap <silent> <space>D  <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <space>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <space>e  <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <silent> [d        <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> ]d        <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <space>q  <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>

" Auto close curly brace
inoremap {<CR> {<CR>}<Esc>ko
