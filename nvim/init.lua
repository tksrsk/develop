vim.loader.enable()
vim.cmd([[
    wshada!
    packadd nohlsearch
]])

require('rc.autocmds')
require('rc.env')
require('rc.filetype')
require('rc.menus')
require('rc.options')
require('rc.packages')
