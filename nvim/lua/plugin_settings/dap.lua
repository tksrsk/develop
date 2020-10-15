-- Keymaps
local api = vim.api

api.nvim_set_keymap('n', '<f5>', "<cmd>lua require'dap'.continue()<cr>", { silent = true, noremap = true })
api.nvim_set_keymap('n', '<f9>', "<cmd>lua require'dap'.repl.toggle()<cr>", { silent = true, noremap = true })
api.nvim_set_keymap('n', '<f10>', "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { silent = true, noremap = true })

-- Configs
local dap = require'dap'

dap.adapters.php = {
    type = 'executable',
    command = 'node',
    args = { '/usr/local/bin/vscode-php-debug/extension/out/phpDebug.js' },
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

dap.repl.commands = vim.tbl_extend('force', dap.repl.commands, {
    custom_commands = {
        ['.restart'] = dap.restart,
    }
})
