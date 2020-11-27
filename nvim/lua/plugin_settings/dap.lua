local api = vim.api

-- Menu
api.nvim_command([[
    amenu .ﲵ\ Toggle\ Console      :lua require'dap'.repl.toggle()<cr>
    amenu .\ Toggle\ Breakpoint   :lua require'dap'.toggle_breakpoint()<cr>
    amenu .\ Start\ /\ Continue   :lua require'dap'.continue()<cr>
    amenu .\ Step\ Over           :lua require'dap'.step_over()<cr>
    amenu .\ Step\ Into           :lua require'dap'.step_into()<cr>
    amenu .\ Step\ Out            :lua require'dap'.step_out()<cr>
    amenu .倫\ Step\ Back          :lua require'dap'.step_back()<cr>
]])

-- Configs
local dap = require'dap'

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
