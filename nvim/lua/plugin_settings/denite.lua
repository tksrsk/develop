local api = vim.api

-- Keymaps
api.nvim_set_keymap('n', '<tab>', "<cmd>Denite source<cr>", { silent = true, noremap = true })

-- Menu
vim.cmd([[
    amenu <silent> 20.01 .---\ Denite\ --- <nop>
    amenu <silent> 20.02 .\ Search        :DeniteCursorWord grep:::! -start-filter<cr>
    amenu <silent> 20.03 .菱\ Reopen       :Denite -resume<cr>
    amenu <silent> 20.04 .\ Next\ Item    :Denite -resume -cursor-pos=+1 -immediately<cr>
    amenu <silent> 20.05 .\ Prev\ Item    :Denite -resume -cursor-pos=-1 -immediately<cr>

    amenu <silent> 99.01 .\ Help          :Denite help -start-filter<cr>
    amenu <silent> 99.02 .﬘\ Buffers       :Denite buffer -start-filter<cr>
]])

-- Configs
vim.call('denite#custom#var', 'file/rec', 'command', { 'rg', '--files', '--glob', '!.git' })
vim.call('denite#custom#var', 'grep', 'command', { 'rg' })
vim.call('denite#custom#var', 'grep', 'default_opts', { '-i', '--vimgrep', '--no-heading' })
vim.call('denite#custom#var', 'grep', 'recursive_opts', {  })
vim.call('denite#custom#var', 'grep', 'pattern_opt', { '--regexp' })
vim.call('denite#custom#var', 'grep', 'separator', { '--' })
vim.call('denite#custom#var', 'grep', 'final_opts', {  })
vim.call('denite#custom#option', '_', { auto_resize = true, split =  'floating', prompt = ''  })
