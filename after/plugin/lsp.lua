local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.configure('sumneko_lua', {
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
