-- Menu
vim.cmd([[
    amenu <silent> 50.01 .---\ Symbols\ ---  <nop>
    amenu <silent> 50.02 .פּ\ Workspace       :Denite lsp/workspace_symbols -start-filter<cr>
    amenu <silent> 50.03 .פּ\ Document        :Denite lsp/document_symbols -start-filter<cr>
    amenu <silent> 50.04 .---\ Lends\ ---    <nop>
    amenu <silent> 50.05 .כֿ\ Hover           :lua vim.lsp.buf.hover()<cr>
    amenu <silent> 50.06 .\ Actions         :Denite lsp/code_action -start-filter<cr>
    amenu <silent> 50.07 .\ Format          :lua vim.lsp.buf.formatting()<cr>
    amenu <silent> 50.08 .\ Definition      :lua vim.lsp.buf.definition()<cr>
    amenu <silent> 50.09 .\ Reference       :Denite lsp/references -start-filter<cr>
    amenu <silent> 50.10 .\ Diagnostics     :Denite lsp/diagnostics -start-filter<cr>
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
