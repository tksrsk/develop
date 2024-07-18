vim.keymap.set('n', '<cr>', function() require('kulala').run() end, { silent = true, buffer = 0 })
vim.keymap.set('n', '<c-p>', function() require('kulala').copy() end, { silent = true, buffer = 0 })
vim.keymap.set('n', '<2-leftmouse>', function() require('kulala').run() end, { silent = true, buffer = 0 })
vim.keymap.set('n', '<tab>', function() require('kulala').toggle_view() end, { silent = true, buffer = 0 })
