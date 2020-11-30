local api = vim.api

-- Menu
api.nvim_command([[
    amenu <silent> 10.01 .\ Fast\ Grep            :Denite grep:::! -start-filter<cr>
    amenu <silent> 10.02 .菱\ Reopen               :Denite -resume<cr>
    amenu <silent> 10.03 .\ Next\ Item            :Denite -resume -cursor-pos=+1 -immediately<cr>
    amenu <silent> 10.04 .\ Prev\ Item            :Denite -resume -cursor-pos=-1 -immediately<cr>
    amenu <silent> 40.01 .\ Open\ LocationList    :lopen<cr>
    amenu <silent> 40.02 .\ Next\ LocationList    :lnext<cr>
    amenu <silent> 40.03 .\ Prev\ LocationList    :lprev<cr>
    amenu <silent> 40.04 .\ Close\ LocationList   :lclose<cr>
    amenu <silent> 50.01 .\ Open\ Quickfix        :copen<cr>
    amenu <silent> 50.02 .\ Next\ Quickfix        :cnext<cr>
    amenu <silent> 50.03 .\ Prev\ Quickfix        :cprev<cr>
    amenu <silent> 50.04 .\ Close\ Quickfix       :cclose<cr>
    amenu <silent> 99.01 .\ Help                  :Denite help -start-filter<cr>
    amenu <silent> 99.02 .ﮠ\ Messages              :messages<cr>
]])

-- Keymaps
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
