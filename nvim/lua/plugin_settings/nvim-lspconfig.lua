-- Configs

local nvim_lsp = require'nvim_lsp'

nvim_lsp.bashls.setup({})
nvim_lsp.clangd.setup({})
nvim_lsp.sumneko_lua.setup({
    settings = { Lua = { diagnostics = { enable = true, globals = { "vim" } } } },
    cmd = 'lua-language-server'
})
nvim_lsp.vimls.setup({})
nvim_lsp.pyls_ms.setup({})
nvim_lsp.gopls.setup({})
nvim_lsp.intelephense.setup({})
nvim_lsp.tsserver.setup({})
nvim_lsp.dockerls.setup({})
nvim_lsp.html.setup({})
nvim_lsp.cssls.setup({})
nvim_lsp.jsonls.setup({})
nvim_lsp.yamlls.setup({})
