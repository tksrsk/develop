-- Options
vim.o.foldcolumn = 'auto:3'
vim.o.fillchars = 'foldopen:▾,foldclose:▸'
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

-- Configs
local configs = require'nvim-treesitter.configs'

configs.setup {
    highlight = { enable = true },
    incremental_selection = { enable = true },
    ensure_installed = 'all',
}
