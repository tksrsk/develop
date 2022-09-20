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
            type = 'firefox',
            request = 'attach',
            host = 'host.docker.internal',
            name = 'Listen for firefox',
            url = 'http://example.com',
            webRoot = '${workspaceFolder}',
            pathMappings = {
                { url = 'http://example.com', path = '${webRoot}/basedir' },
                { url = 'file://', path = '${webRoot}' },
                { url = 'webpack:///', path = '${webRoot}/' },
            },
        },
    }
}

dap.adapters.php = { type = 'executable', command = 'php-debug-adapter' }
dap.adapters.firefox = { type = 'executable', command = 'firefox-debug-adapter' }

for _, config in ipairs(dap_config) do
    for _, filetype in ipairs(config.filetype) do
        dap.configurations[filetype] = { config.configurations }
    end
end

dap.listeners.after.event_stopped['plugin_settings'] = function ()
    require('dapui').open()
    vim.cmd([[
        amenu <silent> PopUp.Goto                  <cmd>lua require('dap').run_to_cursor()<cr>
    ]])
end

dap.listeners.after.disconnect['plugin_settings'] = function ()
    require('dapui').close()
    vim.cmd([[
        aunmenu PopUp.Goto
        aunmenu Debugger.Step.Over
        aunmenu Debugger.Step.Into
        aunmenu Debugger.Step.Out
    ]])
end

-- Dap UI
require('dapui').setup()
