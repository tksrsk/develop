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

    if driver ~= 'redis' then
        require('lspconfig').sqls.setup({ settings = { sqls = { connections = connections } } })
    end
end)
