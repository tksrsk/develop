-- Keymaps
local api = vim.api

api.nvim_set_keymap('n', '<tab>', "<cmd>Denite source command<cr>", { silent = true, noremap = true })

-- Configs
vim.call('denite#custom#var', 'file/rec', 'command', { 'rg', '--files', '--glob', '!.git' })
vim.call('denite#custom#var', 'grep', 'command', { 'rg' })
vim.call('denite#custom#var', 'grep', 'default_opts', { '-i', '--vimgrep', '--no-heading' })
vim.call('denite#custom#var', 'grep', 'recursive_opts', {  })
vim.call('denite#custom#var', 'grep', 'pattern_opt', { '--regexp' })
vim.call('denite#custom#var', 'grep', 'separator', { '--' })
vim.call('denite#custom#var', 'grep', 'final_opts', {  })
vim.call('denite#custom#option', '_', { auto_resize = true, split =  'floating', prompt = ''  })
vim.call('denite#custom#source', 'grep', { args = { '', '', '!' } })
vim.call('denite#custom#source', 'deol', { args = { '-edit -split=floating' } })
