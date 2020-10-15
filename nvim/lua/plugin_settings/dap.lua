-- Keymaps
local api = vim.api

api.nvim_set_keymap('n', '<f5>', "<cmd>lua require'dap'.continue()<cr>", { silent = true, noremap = true })
api.nvim_set_keymap('n', '<f9>', "<cmd>lua require'dap'.repl.open()<cr>", { silent = true, noremap = true })
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
        name = 'Launch xdebug',
        hostname = '0.0.0.0',
        stopOnEntry = false,
        serverSourceRoot = '/project/',
        localSourceRoot = '/project/',
    }
}
