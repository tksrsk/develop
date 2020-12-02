-- Menu
vim.cmd([[
    amenu <silent> 30.01 .\ Open        :Deol -edit<cr>
    amenu <silent> 30.02 .ﬢ\ Horizontal  :Deol -edit -split=horizontal<cr>
    amenu <silent> 30.03 .ײַ\ Vertical    :Deol -edit -split=vertical<cr>
]])

-- Configs
vim.g['deol#prompt_pattern'] = '% \\|%$'
