-- Accelerated JK
vim.keymap.set('n', 'j', '<Plug>(accelerated_jk_gj)')
vim.keymap.set('n', 'k', '<Plug>(accelerated_jk_gk)')

-- Hop
require('flash').setup({
    search = { mode = 'fuzzy' }
})
vim.keymap.set({'n', 'x', 'o'}, '<leader>/', require('flash').jump)
vim.keymap.set({'v', 'o'}, 'm', require('flash').treesitter)
