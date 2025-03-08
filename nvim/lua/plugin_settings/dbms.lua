-- Dbee
require('dbee').setup({
    sources = {
        require('dbee.sources').FileSource:new('/resources/sql/dbee.json'),
    }
})
require('dbee').api.core.register_event_listener('current_connection_changed', function ()
    local conn = require('dbee').api.core.get_current_connection()
    local connections = { { driver = conn.type, dataSourceName = conn.url } }

    if connections[1].driver == 'sqlserver' then
        connections[1].driver ='mssql'
    elseif connections[1].driver == 'sqlite' then
        connections[1].driver ='sqlite3'
    end
    if connections[1].driver ~= 'redis' then
        require('lspconfig').sqls.setup({ settings = { sqls = { connections = connections } } })
    end
end)
