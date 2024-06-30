vim.loader.enable()
vim.cmd([[
    wshada!
    packadd nohlsearch
    packadd packer.nvim
]])

require('rc.autocmds')
require('rc.env')
require('rc.filetype')
require('rc.menus')
require('rc.options')
require('rc.packages')
