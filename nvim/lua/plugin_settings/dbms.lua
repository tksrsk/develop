-- Dbee
require('dbee').setup({
    result = { focus_result = false },
    sources = {
        require('dbee.sources').FileSource:new('/resources/sql/dbee.json'),
    },
})
require('dbee').api.core.register_event_listener('current_connection_changed', vim.schedule_wrap(
    function ()
        local conn = require('dbee').api.core.get_current_connection()
        local next = { driver = conn.type, dataSourceName = conn.url }
        local settings = vim.lsp.config.sqls.settings
        local curr = settings and settings.sqls and settings.sqls.connections[1] or nil

        if curr and curr.driver == next.driver and curr.dataSourceName == next.dataSourceName then
            return
        end

        if next.driver == 'sqlserver' then
            next.driver ='mssql'
        elseif next.driver == 'sqlite' then
            next.driver ='sqlite3'
        end
        if next.driver ~= 'redis' then
            vim.lsp.config('sqls', { settings = { sqls = { connections = { next } } } })
            for _, client in pairs(vim.lsp.get_clients({ name = 'sqls' })) do
                client:notify('workspace/didChangeConfiguration', {
                    settings = { sqls = { connections = { next } } },
                })
                client:request('workspace/executeCommand', { command = 'switchConnections', arguments = { '1' } })
            end
        end
    end
))
