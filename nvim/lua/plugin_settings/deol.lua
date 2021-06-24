-- Menu
vim.cmd([[
    amenu <silent> 30.01 .\ Open        <cmd>Deol -toggle -edit<cr>
    amenu <silent> 30.02 .ﬢ\ Horizontal  <cmd>Deol -toggle -edit -split=horizontal<cr>
    amenu <silent> 30.03 .ײַ\ Vertical    <cmd>Deol -toggle -edit -split=vertical<cr>
]])

-- Configs
vim.g['deol#prompt_pattern'] = '% \\|%$'
