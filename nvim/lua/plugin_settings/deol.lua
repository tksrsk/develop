-- Menu
vim.cmd([[
    amenu <silent> 30.01 Terminal.Open          <cmd>Deol -toggle -edit<cr>
    amenu <silent> 30.02 Terminal.Horizontal    <cmd>Deol -toggle -edit -split=horizontal<cr>
    amenu <silent> 30.03 Terminal.Vertical      <cmd>Deol -toggle -edit -split=vertical<cr>
]])

-- Configs
vim.g['deol#prompt_pattern'] = '% \\|%$'
