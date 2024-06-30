vim.keymap.set('n', '<cr>', '<cmd>lua require("kulala").run()<cr>', { silent = true, buffer = 0 })
vim.keymap.set('n', '<2-leftmouse>', '<cmd>lua require("kulala").run()<cr>', { silent = true, buffer = 0 })
vim.keymap.set('n', '<tab>', '<cmd>lua require("kulala").toggle_view()<cr>', { silent = true, buffer = 0 })
