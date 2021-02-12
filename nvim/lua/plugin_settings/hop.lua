-- Configs
vim.api.nvim_set_keymap('n', '<leader>w', "<cmd>lua require'hop'.hint_words()<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>/', "<cmd>lua require'hop'.hint_patterns()<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>f', "<cmd>lua require'hop'.hint_char2()<cr>", {})
