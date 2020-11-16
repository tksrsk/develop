-- Configs

local lspconfig = require'lspconfig'

lspconfig.bashls.setup({})
lspconfig.clangd.setup({})
lspconfig.sumneko_lua.setup({
    settings = { Lua = { diagnostics = { enable = true, globals = { "vim" } } } },
    cmd = 'lua-language-server'
})
lspconfig.vimls.setup({})
lspconfig.pyls_ms.setup({})
lspconfig.gopls.setup({})
lspconfig.intelephense.setup({})
lspconfig.tsserver.setup({})
lspconfig.dockerls.setup({})
lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.jsonls.setup({})
lspconfig.yamlls.setup({})
