-- Dbee
require('dbee').setup({
    sources = {
        require('dbee.sources').FileSource:new('/resources/sql/dbee.json'),
    }
})
require('dbee').api.core.register_event_listener('current_connection_changed', function ()
    local conn = require('dbee').api.core.get_current_connection()
    local driver = conn.type == 'sqlserver' and 'mssql' or conn.type
    local connections = { { driver = driver, dataSourceName = conn.url } }
    local old_clients = require('lspconfig').sqls.manager:clients()

    require('lspconfig').sqls.setup({
        settings = { sqls = { connections = connections } },
        on_attach = function (_, bufnr)
            if #old_clients > 0 then vim.lsp.completion.enable(false, old_clients[1].id, bufnr) end
        end
    })
end)
