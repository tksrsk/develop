vim.cmd([[
    packadd packer.nvim
]])

require('rc.autocmds')
require('rc.menus')
require('rc.options')
require('rc.packages')
