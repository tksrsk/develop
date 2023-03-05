-- Configs
local dap = require('dap')
local dap_config = {
    {
        filetype = { 'php' },
        configurations = {
            {
                type = 'php',
                request = 'launch',
                name = 'Listen for Xdebug',
                host = 'host.docker.internal',
                port = 9000,
            },
        },
    },
    {
        filetype = { 'javascript', 'typescript', 'jasascriptreact', 'typescriptreact' },
        configurations = {
            {
                type = 'pwa-node',
                request = 'launch',
                name = 'Launch file',
                program = '${file}',
                cwd = '${workspaceFolder}',
            },
            {
                type = 'pwa-chrome',
                request = 'attach',
                name = 'Listen for chrome',
                address = 'host.docker.internal',
                port = 8315,
                webRoot = function() return '${workspaceFolder}' .. vim.fn.input('Document Root: ${workspaceFolder}') end,
                urlFilter = function() return 'http://' .. vim.fn.input('URL: http://') .. '*' end,
            },
        },
    }
}

dap.adapters.php = { type = 'executable', command = 'php-debug-adapter' }

require('dap-vscode-js').setup({
    debugger_cmd = { 'js-debug-adapter' },
    adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' },
})

for _, config in ipairs(dap_config) do
    for _, filetype in ipairs(config.filetype) do
        dap.configurations[filetype] = config.configurations
    end
end

dap.listeners.after.event_thread['plugin_settings'] = function (_, body)
    if body.reason == 'started' then
        require('dapui').open()
        vim.cmd([[
            amenu enable PopUp.Goto
        ]])
    elseif body.reason == 'exited' then
        require('dapui').close()
        vim.cmd([[
            aunmenu disable PopUp.Goto
        ]])
    end
end

-- Dap UI
require('dapui').setup()
