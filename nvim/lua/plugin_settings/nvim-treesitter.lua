-- Options
vim.opt.fillchars = 'foldopen:▾,foldclose:▸,eob: '
vim.opt.foldcolumn = 'auto:4'
vim.opt.foldmethod = 'expr'
vim.opt.foldnestmax = 4
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- Configs
local configs = require('nvim-treesitter.configs')

configs.setup {
    highlight = { enable = true },
    incremental_selection = { enable = true },
    indent = { enable = true },
    refactor = {
        highlight_definitions = { enable = true },
        highlight_current_scope = { enable = true },
        smart_rename = { enable = true },
        navigation = {
            enable = true,
            keymaps = {
                goto_next_usage = '<leader>*',
                goto_previous_usage = '<leader>#',
            }
        },
    },
    textobjects = {
        swap = {
            enable = true,
            swap_next = {
                ['<leader>a'] = '@parameter.inner'
            },
            swap_previous = {
                ['<leader>A'] = '@parameter.inner'
            },
        },
    },
    playground = { enable = true },
    rainbow = { enable = true },
    ensure_installed = 'all',
}
