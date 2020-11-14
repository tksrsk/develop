-- Configs
vim.call('deoplete#enable')
vim.call('deoplete#custom#option', {
    ignore_case = true,
    ignore_sources = { ['_'] =  { 'around', 'file', 'member', 'omni' } },
    nofile_complete_filetypes = { 'denite-filter', 'zsh' }
})
vim.call('deoplete#custom#option', 'sources', { ['denite-filter'] = { 'denite' } })
