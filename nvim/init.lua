-- Options
vim.o.runtimepath = table.concat({
    vim.o.runtimepath,
    '~/.config/nvim/dein/repos/github.com/Shougo/dein.vim',
    vim.env.HOST_ROOT .. '/.config/develop/nvim',
}, ',')
vim.o.shell = 'zsh'
vim.o.hidden = true
vim.o.swapfile = false
vim.o.bomb = false
vim.o.encoding = 'utf-8'
vim.o.fileencodings = 'utf-8,iso-2022-jp,euc-jp,sjis'
vim.o.fileformats = 'unix,dos,mac'
vim.o.fileformat = 'unix'
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.mouse = 'r'
vim.o.mousemodel = 'popup'
vim.o.diffopt = table.concat({ vim.o.diffopt, 'iwhite' }, ',')
vim.o.clipboard = 'unnamedplus'
vim.o.inccommand = 'split'
vim.o.completeopt = 'noinsert,menuone,noselect'
vim.o.termguicolors = true
vim.wo.number = true
vim.wo.relativenumber = true

-- Setting
vim.cmd([[
    wshada!
    filetype plugin indent on
    syntax on
]])

-- Menu
vim.cmd([[
    amenu <silent> 99.11 .---\ Others\ --- <nop>
    amenu <silent> 99.12 .\ Save\ &\ Exit :wqa<cr>
]])

-- Autocmd
vim.cmd([[
    au TextYankPost * silent! lua vim.highlight.on_yank { timeout=200 }
]])

-- Loading Plugins
if vim.call('dein#load_state', '~/.config/nvim/dein/') == 1 then
    vim.call('dein#begin', '~/.config/nvim/dein/')
    vim.call('dein#load_toml', '$HOST_ROOT/.config/develop/nvim/dein.toml')
    vim.call('dein#end')
    vim.call('dein#save_state')
end

if vim.call('dein#check_install') == 1 then
    vim.call('dein#install')
end
vim.call('dein#call_hook', 'source')
