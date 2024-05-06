local lsp = require('lsp-zero')

-- LSP zero setup
lsp.preset('recommended')

-- Fix Undefined global 'vim'
lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})

-- Fix autocompletion within leptos #[server] and #[component]
require('lspconfig').rust_analyzer.setup {
  settings = {
    ["rust-analyzer"] = {
      procMacro = {
        ignored = {
            leptos_macro = {
                "component",
                "server",
            },
        },
      },
    },
  }
}
