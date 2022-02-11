-- Menu
vim.cmd([[
    amenu <silent> 10.31 Tools.Rest\ Client <cmd>Denite file::/resources/rest-client/ file:new:/resources/rest-client/ -default-action=tabswitch<cr>
]])

-- Configs
require('rest-nvim').setup({
    result_split_in_place = true,
})
