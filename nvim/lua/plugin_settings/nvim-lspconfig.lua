-- Menu
vim.cmd([[
    amenu <silent> 50.01 .כֿ\ Hover           :lua vim.lsp.buf.hover()<cr>
    amenu <silent> 50.02 .\ Format          :lua vim.lsp.buf.formatting()<cr>
    amenu <silent> 50.03 .\ Rename          :lua vim.lsp.buf.rename()<cr>
]])

-- Configs
local lspconfig = require('lspconfig')

lspconfig.bashls.setup({})
lspconfig.clangd.setup({})
lspconfig.sumneko_lua.setup({
    settings = { Lua = { diagnostics = { enable = true, globals = { "vim" } } } },
    cmd = { '/project/lsp/lua-language-server/bin/Linux/lua-language-server', '-E', '/project/lsp/lua-language-server/main.lua' }
})
lspconfig.vimls.setup({})
lspconfig.pyls.setup({})
lspconfig.gopls.setup({})
lspconfig.intelephense.setup({})
lspconfig.tsserver.setup({})
lspconfig.angularls.setup({
    on_new_config = function(config, root_dir)
        config.cmd = { 'node', root_dir .. '/node_modules/@angular/language-server/index.js', '--stdio', '--tsProbeLocations', root_dir , '--ngProbeLocations', root_dir }
    end,
})
lspconfig.sqls.setup({
    cmd = { vim.env.HOME .. '/go/bin/sqls' }
})
lspconfig.dockerls.setup({})
lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.jsonls.setup({})
lspconfig.yamlls.setup({})
