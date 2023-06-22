-- Accelerated JK
vim.keymap.set('n', 'j', '<Plug>(accelerated_jk_gj)')
vim.keymap.set('n', 'k', '<Plug>(accelerated_jk_gk)')

-- Hop
require('flash').setup()
vim.keymap.set({'n', 'x', 'o'}, '<leader>/', function ()
    require('flash').jump({ search = { mode = 'fuzzy' } })
end)
vim.keymap.set({'n', 'x', 'o'}, '<leader>j', function ()
    require('flash').jump({ search = { mode = 'search' }, pattern = '^' })
end)
vim.keymap.set({'v', 'o'}, 'm', require('flash').treesitter)
