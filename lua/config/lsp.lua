local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.skip_server_setup({ 'rust_analyzer' })

lsp.setup()

local rust_settings = {
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        allFeatures = true,
        command = "clippy",
      }
    }
  },
}

-- Initialize rust_analyzer with rust-tools
local rust_lsp = lsp.build_options('rust_analyzer', rust_settings)
require('rust-tools').setup({
  server = rust_lsp,
  tools = {
    inlay_hints = {
      show_parameter_hints = true,
      parameter_hints_prefix = "*********** :)",
      other_hints_prefix = "",
    }
  },
})
