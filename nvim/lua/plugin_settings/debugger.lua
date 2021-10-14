-- Menu
vim.cmd([[
    amenu <silent> 30.01 Debugger.Breakpoint            <cmd>lua require('dap').toggle_breakpoint()<cr>
    amenu <silent> 30.02 Debugger.Start\ /\ Continue    <cmd>lua require('dap').continue()<cr>
    amenu <silent> 30.03 Debugger.Goto                  <cmd>lua require('dap').run_to_cursor()<cr>
    amenu <silent> 30.03 Debugger.Dashboard             <cmd>lua require("dapui").toggle()<cr>
]])

-- Configs
local dap = require('dap')

dap.adapters.php = {
    type = 'executable',
    command = 'node',
    args = { '/usr/local/bin/php-debug/extension/out/phpDebug.js' },
}

dap.configurations.php = {
    {
        type = 'php',
        request = 'launch',
        name = 'Listen for xdebug',
        hostname = '0.0.0.0',
        port = 9000,
        stopOnEntry = false,
        serverSourceRoot = '/project/',
        localSourceRoot = '/project/',
    },
}

dap.adapters.firefox = {
    type = 'executable',
    command = 'node',
    args = { '/usr/local/bin/vscode-firefox-debug/extension/dist/adapter.bundle.js' },
}


local webapps = {
}

local filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' }
local configurations = { }

for domain, root in pairs(webapps) do
    table.insert(configurations, {
        type = 'firefox',
        request = 'attach',
        name = 'Listen for '..domain,
        host = '[hostname]',
        url = 'http://'..domain..'.localhost',
        webRoot = '${workspaceFolder}',
        pathMappings = {
            { url = 'http://'..domain..'.localhost', path = '${webRoot}'..root },
            { url = 'file://', path = '${webRoot}' },
        },
    })
end

for _, filetype in ipairs(filetypes) do
    dap.configurations[filetype] = configurations
end

dap.repl.commands = vim.tbl_extend('force', dap.repl.commands, {
    custom_commands = {
        ['.restart'] = dap.restart,
    }
})

-- Dap UI
require('dapui').setup()
