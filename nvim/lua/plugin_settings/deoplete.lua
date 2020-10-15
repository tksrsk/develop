-- Configs
vim.call('deoplete#enable')
vim.call('deoplete#custom#option', {
    ignore_case = true,
    ignore_sources = { ['_'] =  { 'around', 'file', 'member', 'omni' } },
})
vim.call('deoplete#custom#option', 'sources', { ['denite-filter'] = { 'denite' } })
