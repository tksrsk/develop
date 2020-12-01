local api = vim.api

-- Menu
api.nvim_command([[
    amenu <silent> 30.01 .ﬢ\ Open\ Terminal\ Horizontal    :Deol -edit -split=horizontal<cr>
    amenu <silent> 30.02 .ײַ\ Open\ Terminal\ Vertical      :Deol -edit -split=vertical<cr>
]])

-- Configs
vim.g['deol#prompt_pattern'] = '% \\|%$'
