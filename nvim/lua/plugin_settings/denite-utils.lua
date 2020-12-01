local api = vim.api

-- Menu
api.nvim_command([[
    amenu <silent> 20.11 .---\ Git\ ---    <nop>
    amenu <silent> 20.12 .\ Status        :Denite git/status<cr>
    amenu <silent> 20.13 .ﰖ\ Log           :Denite git/logs<cr>
    amenu <silent> 20.14 .\ Branch        :Denite git/branch<cr>
    amenu <silent> 20.21 .---\ Docker\ --- <nop>
    amenu <silent> 20.22 .\ Containers    :Denite docker/container<cr>
    amenu <silent> 20.23 .\ Images        :Denite docker/image<cr>
]])
