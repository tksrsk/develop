-- Menu
vim.cmd([[
    amenu <silent> 30.01 Debugger.Breakpoint            <cmd>lua require('dap').toggle_breakpoint()<cr>
    amenu <silent> 30.02 Debugger.Start\ /\ Continue    <cmd>lua require('dap').continue()<cr>
    amenu <silent> 30.03 Debugger.Goto                  <cmd>lua require('dap').run_to_cursor()<cr>
    amenu <silent> 30.03 Debugger.Dashboard             <cmd>lua require('dapui').toggle()<cr>
]])

-- Configs
local dap = require('dap-install')

dap.config('php', {
    configurations = {
        {
            type = 'php',
            request = 'launch',
            name = 'Listen for Xdebug',
            port = 9000,
        }
    },
})

dap.config('chrome', {
    configurations = {
        {
            type = 'chrome',
            request = 'attach',
            address = '[hostname]',
            name = 'Listen for chrome',
            urlFilter = '*.localhost*',
            webRoot = '${workspaceFolder}',
        }
    }
})

-- Dap UI
require('dapui').setup()
