vim.loader.enable()
vim.cmd([[
    wshada!
    packadd packer.nvim
]])

require('rc.autocmds')
require('rc.env')
require('rc.menus')
require('rc.options')
require('rc.packages')
