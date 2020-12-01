local api = vim.api

-- Menu
api.nvim_command([[
    amenu <silent> 50.01 .---\ Location\ List\ --- <nop>
    amenu <silent> 50.02 .\ Open                  :lopen<cr>
    amenu <silent> 50.03 .\ Next                  :lnext<cr>
    amenu <silent> 50.04 .丹\ Prev                 :lprev<cr>
    amenu <silent> 50.05 .\ Close                 :lclose<cr>
    amenu <silent> 50.11 .---\ Quickfix\ ---       <nop>
    amenu <silent> 50.12 .\ Open                  :copen<cr>
    amenu <silent> 50.13 .﯐\ Next                  :cnext<cr>
    amenu <silent> 50.14 .ﰈ\ Prev                  :cprev<cr>
    amenu <silent> 50.15 .\ Close                 :cclose<cr>

    amenu <silent> 99.11 .ﮠ\ Messages              :messages<cr>
    amenu <silent> 99.12 .\ Save\ &\ Exit         :wqa<cr>
]])

-- Autocmd
api.nvim_command([[
    au TextYankPost * silent! lua vim.highlight.on_yank { timeout=200 }
]])
