-- Menu
vim.cmd([[
    amenu <silent> 20.01 .\ Open          :Denite source<cr>
    amenu <silent> 20.02 .菱\ Reopen       :Denite -resume<cr>
    amenu <silent> 20.03 .\ Next\ Item    :Denite -resume -cursor-pos=+1 -immediately<cr>
    amenu <silent> 20.04 .\ Prev\ Item    :Denite -resume -cursor-pos=-1 -immediately<cr>
]])

-- Configs
vim.call('denite#custom#var', 'file/rec', 'command', { 'rg', '--files', '--glob', '!.git' })
vim.call('denite#custom#var', 'grep', 'command', { 'rg' })
vim.call('denite#custom#var', 'grep', 'default_opts', { '-i', '--vimgrep', '--no-heading' })
vim.call('denite#custom#var', 'grep', 'recursive_opts', {  })
vim.call('denite#custom#var', 'grep', 'pattern_opt', { '--regexp' })
vim.call('denite#custom#var', 'grep', 'separator', { '--' })
vim.call('denite#custom#var', 'grep', 'final_opts', {  })
vim.call('denite#custom#option', '_', { auto_resize = true, start_filter = true, split = 'floating', winrow = 1, prompt = '' })
