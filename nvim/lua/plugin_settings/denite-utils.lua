-- Menu
vim.cmd([[
    amenu <silent> 20.11 .---\ Git\ ---    <nop>
    amenu <silent> 20.12 .\ Files         :Denite git/file -start-filter<cr>
    amenu <silent> 20.13 .\ Status        :Denite git/status<cr>
    amenu <silent> 20.14 .ﰖ\ Log           :Denite git/log<cr>
    amenu <silent> 20.15 .\ Branch        :Denite git/branch<cr>
    amenu <silent> 20.16 .\ Repository    :Denite git/remote<cr>
    amenu <silent> 20.21 .---\ Docker\ --- <nop>
    amenu <silent> 20.22 .\ Containers    :Denite docker/container<cr>
    amenu <silent> 20.23 .\ Images        :Denite docker/image<cr>

    amenu <silent> 60.01 .\ Bookmark      :Denite bookmark -start-filter<cr>
]])
