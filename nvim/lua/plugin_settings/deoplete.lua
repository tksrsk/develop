-- Configs
vim.g['deoplete#lsp#use_icons_for_candidates'] = true

vim.call('deoplete#enable')
vim.call('deoplete#lsp#enable')
vim.call('deoplete#custom#option', {
    max_list = 100,
    ignore_sources = { ['_'] =  { 'around', 'member', 'omni' } },
    nofile_complete_filetypes = { 'denite-filter', 'zsh' }
})
vim.call('deoplete#custom#option', 'sources', { ['denite-filter'] = { 'denite' } })
vim.call('deoplete#custom#source', '_', { ignore_case = true })
vim.call('deoplete#custom#source', 'lsp', { mark = '', rank = 100 })
vim.call('deoplete#custom#source', 'denite', { mark = '', rank = 100 })
vim.call('deoplete#custom#source', 'zsh', { mark = '', rank = 100 })
vim.call('deoplete#custom#source', 'vim-dadbod-completion', { mark = '', rank = 50 })
vim.call('deoplete#custom#source', 'file', { mark = '', rank = 50 })
vim.call('deoplete#custom#source', 'buffer', { mark = '', rank = 30 })
