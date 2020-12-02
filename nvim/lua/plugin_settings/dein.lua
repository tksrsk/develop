-- Menu
vim.cmd([[
    amenu <silent> 10.21 .\ Update    :call dein#update()<cr>

    amenu <silent> 60.11 .\ Plugins   :Denite dein -start-filter<cr>
]])
