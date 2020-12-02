-- Menu
vim.cmd([[
    amenu <silent> 50.11 .כֿ\ Hover       :lua vim.lsp.buf.hover()<cr>
    amenu <silent> 50.12 .\ Format      :lua vim.lsp.buf.formatting()<cr>
    amenu <silent> 50.13 .\ Definition  :lua vim.lsp.buf.definition()<cr>
    amenu <silent> 50.14 .\ Reference   :lua vim.lsp.buf.references()<cr>
    amenu <silent> 50.15 .\ Next\ Error :lua vim.lsp.diagnostic.goto_next()<cr>
    amenu <silent> 50.16 .\ Prev\ Error :lua vim.lsp.diagnostic.goto_prev()<cr>

]])

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
lspconfig.angularls.setup({})
lspconfig.dockerls.setup({})
lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.jsonls.setup({})
lspconfig.yamlls.setup({})
