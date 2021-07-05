-- Menu
vim.cmd([[
    amenu <silent> 40.01 .\ Breakpoint          <cmd>lua require('dap').toggle_breakpoint()<cr>
    amenu <silent> 40.02 .\ Start\ /\ Continue  <cmd>lua require('dap').continue()<cr>
    amenu <silent> 40.03 .懶\ Goto               <cmd>lua require('dap').run_to_cursor()<cr>
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

vim.fn.sign_define('DapBreakpoint', {text='', texthl='', linehl='DiffAdd', numhl='DiffAdd'})
vim.fn.sign_define('DapStopped', {text='', texthl='', linehl='DiffChange', numhl='DiffChange'})

-- Dap UI
require('dapui').setup()
