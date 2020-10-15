-- Options
local api = vim.api

api.nvim_set_option('foldcolumn', 'auto:3')
api.nvim_set_option('fillchars', 'foldopen:▾,foldclose:▸')
api.nvim_set_option('foldmethod', 'expr')
api.nvim_set_option('foldexpr', 'nvim_treesitter#foldexpr()')

-- Configs
local configs = require'nvim-treesitter.configs'

configs.setup {
    highlight = { enable = true },
    incremental_selection = { enable = true },
    ensure_installed = 'all',
}
