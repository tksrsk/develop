-- Menu
vim.cmd([[
    amenu <silent> 50.01 .כֿ\ Hover           <cmd>lua vim.lsp.buf.hover()<cr>
    amenu <silent> 50.02 .\ Format          <cmd>lua vim.lsp.buf.formatting()<cr>
    amenu <silent> 50.03 .\ Rename          <cmd>lua vim.lsp.buf.rename()<cr>
]])

-- Configs
local lspconfig = require('lspconfig')
local servers = require('lspinstall').installed_servers()

require('lspinstall').setup()

table.insert(servers, 'yamlls')
table.insert(servers, 'sqls')

for _, server in pairs(servers) do
    local config = {}
    if server == 'lua' then
        config.settings = {
            Lua = {
                diagnostics = { globals = { "vim" } },
                workspace = {
                    library = {
                        [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                        [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                    },
                },
            },
        }
    end
    if server == 'sqls' then
        config.cmd = { vim.env.HOME .. '/go/bin/sqls' }
    end

    lspconfig[server].setup(config)
end

-- Lsp trouble
require('trouble').setup({
    mode = "document",
    auto_open = true,
    auto_close = true,
})
