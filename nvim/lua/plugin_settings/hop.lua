-- Configs
vim.api.nvim_set_keymap('n', '<leader>w', "<cmd>lua require'hop'.hint_words()<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>j', "<cmd>lua require'hop'.hint_lines()<cr>", {})
