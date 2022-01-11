vim.api.nvim_buf_set_keymap(0, 'v', '<cr>', '<plug>(sqls-execute-query)', { silent = true })
vim.api.nvim_buf_set_keymap(0, 'n', '<leader>dc', '<cmd>SqlsSwitchConnection<cr>', { silent = true })
vim.api.nvim_buf_set_keymap(0, 'n', '<leader>dd', '<cmd>SqlsSwitchDatabase<cr>', { silent = true })
