local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup_nvim_cmp({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp', keyword_length = 0},
    {name = 'buffer', keyword_length = 3},
    {name = 'luasnip', keyword_length = 2},
  }
})

lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.configure('rust_analyzer', {
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        command = "clippy",
      }
    }
  },
})

lsp.setup()
