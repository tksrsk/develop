-- Options
vim.o.fillchars = 'foldopen:▾,foldclose:▸,foldsep:|'
vim.wo.foldcolumn = 'auto:3'
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

-- Configs
local configs = require'nvim-treesitter.configs'

configs.setup {
    highlight = {
        enable = true,
        use_languagetree = true,
    },
    incremental_selection = { enable = true },
    indent = { enable = true },
    ensure_installed = 'all',
}
