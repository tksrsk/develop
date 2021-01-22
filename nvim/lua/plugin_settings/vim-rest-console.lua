-- Menu
vim.cmd([[
    amenu <silent> 10.31 .ﰍ\ Rest\ Client  :Denite file::/resources/rest-client file:new:/resources/rest-client -default-action=tabswitch -start-filter<cr>
]])

-- Configs
vim.g.vrc_debug = 1
vim.g.vrc_curl_opts = {['-i'] = '', ['-s'] = ''}
vim.g.vrc_auto_format_response_patterns = { json = 'jq' }
