vim.keymap.set('v', '<cr>', '<plug>(sqls-execute-query)', { silent = true, buffer = 0 })
vim.keymap.set('n', '<leader>dc', '<cmd>SqlsSwitchConnection<cr>', { silent = true, buffer = 0 })
vim.keymap.set('n', '<leader>dd', '<cmd>SqlsSwitchDatabase<cr>', { silent = true, buffer = 0 })
