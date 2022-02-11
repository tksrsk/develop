-- Accelerated JK
vim.api.nvim_set_keymap('n', 'j', '<Plug>(accelerated_jk_gj)', {})
vim.api.nvim_set_keymap('n', 'k', '<Plug>(accelerated_jk_gk)', {})

-- Hop
require('hop').setup()
vim.api.nvim_set_keymap('n', '<leader>w', '<cmd>HopWordMW<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>W', '<cmd>HopAnywhereMW<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>j', '<cmd>HopLineMW<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>HopChar1MW<cr>', {})

-- Nvim Treehopper
vim.api.nvim_set_keymap('o', 'm', "<cmd>lua require('tsht').nodes()<cr>", {})
vim.api.nvim_set_keymap('v', 'm', ":lua require('tsht').nodes()<cr>", { noremap = true })
