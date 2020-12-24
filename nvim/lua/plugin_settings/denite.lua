-- Menu
vim.cmd([[
    amenu <silent> 20.01 .---\ Denite\ --- <nop>
    amenu <silent> 20.02 .\ Search        :DeniteCursorWord grep:::! -start-filter<cr>
    amenu <silent> 20.03 .菱\ Reopen       :Denite -resume<cr>
    amenu <silent> 20.04 .\ Next\ Item    :Denite -resume -cursor-pos=+1 -immediately<cr>
    amenu <silent> 20.05 .\ Prev\ Item    :Denite -resume -cursor-pos=-1 -immediately<cr>

    amenu <silent> 20.11 .---\ Git\ ---    <nop>
    amenu <silent> 20.12 .\ Files         :Denite git/file -start-filter<cr>
    amenu <silent> 20.13 .\ Status        :Denite git/status -start-filter<cr>
    amenu <silent> 20.14 .ﰖ\ Log           :Denite git/log<cr>
    amenu <silent> 20.15 .\ Branch        :Denite git/branch<cr>
    amenu <silent> 20.16 .\ Repository    :Denite git/remote<cr>

    amenu <silent> 20.21 .---\ Docker\ --- <nop>
    amenu <silent> 20.22 .\ Containers    :Denite docker/container<cr>
    amenu <silent> 20.23 .\ Images        :Denite docker/image<cr>

    amenu <silent> 20.31 .---\ Others\ --- <nop>
    amenu <silent> 20.32 .\ Bookmark      :Denite bookmark -start-filter<cr>
    amenu <silent> 20.33 .\ Help          :Denite help -start-filter<cr>
    amenu <silent> 20.34 .﬘\ Buffers       :Denite buffer -start-filter<cr>
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
