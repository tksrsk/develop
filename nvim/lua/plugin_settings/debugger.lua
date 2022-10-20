-- Menu
vim.cmd([[
    amenu <silent> PopUp.Breakpoint                     <cmd>lua require('dap').toggle_breakpoint()<cr>
    amenu <silent> 30.01 Debugger.Start\ /\ Continue    <cmd>lua require('dap').continue()<cr>
]])

-- Configs
local dap = require('dap')
local dap_config = {
    {
        filetype = { 'php' },
        configurations = {
            type = 'php',
            request = 'launch',
            name = 'Listen for Xdebug',
            host = 'host.docker.internal',
            port = 9000,
        },
    },
    {
        filetype = { 'javascript', 'typescript', 'jasascriptreact', 'typescriptreact' },
        configurations = {
            type = 'chrome',
            request = 'attach',
            name = 'Listen for chrome',
            address = 'host.docker.internal',
            port = 8315,
            webRoot = function() return '${workspaceFolder}' .. vim.fn.input('Document Root: ${workspaceFolder}') end,
            urlFilter = 'http://*',
        },
    }
}

dap.adapters.php = { type = 'executable', command = 'php-debug-adapter' }
dap.adapters.chrome = { type = 'executable', command = 'chrome-debug-adapter' }

for _, config in ipairs(dap_config) do
    for _, filetype in ipairs(config.filetype) do
        dap.configurations[filetype] = { config.configurations }
    end
end

dap.listeners.after.event_thread['plugin_settings'] = function (_, body)
    if body.reason == 'started' then
        require('dapui').open()
        vim.cmd([[
            amenu <silent> PopUp.Goto                  <cmd>lua require('dap').run_to_cursor()<cr>
        ]])
    elseif body.reason == 'exited' then
        require('dapui').close()
        vim.cmd([[
            aunmenu PopUp.Goto
        ]])
    end
end

-- Dap UI
require('dapui').setup()
