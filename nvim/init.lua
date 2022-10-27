vim.cmd([[
    packadd packer.nvim
]])

require('rc.autocmds')
require('rc.options')
require('rc.packages')
require('rc.menus')
