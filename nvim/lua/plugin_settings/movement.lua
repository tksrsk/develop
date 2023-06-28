-- Accelerated JK
vim.keymap.set('n', 'j', '<Plug>(accelerated_jk_gj)')
vim.keymap.set('n', 'k', '<Plug>(accelerated_jk_gk)')

-- Flash
require('flash').setup()
vim.keymap.set({'n', 'x', 'o'}, '<leader>w', function ()
    require('flash').jump({ search = { mode = 'search' }, pattern = '\\<' })
end)
vim.keymap.set({'n', 'x', 'o'}, '<leader>j', function ()
    require('flash').jump({
        search = { mode = 'search', max_length = 0 },
        label = { after = { 0, 0 } },
        pattern = '^'
    })
end)
vim.keymap.set({'v', 'o'}, 'm', require('flash').treesitter)
