-- Menu
vim.cmd([[
    amenu <silent> 10.31 .ﰍ\ Rest\ Client  :Denite file::/resources/rest-client file:new:/resources/rest-client -default-action=tabopen -start-filter<cr>
]])

-- Configs
vim.g.vrc_curl_opts = {['-i'] = '', ['-s'] = ''}
