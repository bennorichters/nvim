local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.configure('rust_analyzer', {
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        allFeatures = true,
        command = "clippy",
      }
    }
  },
})

lsp.setup()
