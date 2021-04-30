-- Options
vim.o.fillchars = 'foldopen:▾,foldclose:▸,eob: '
vim.wo.foldcolumn = 'auto:4'
vim.wo.foldmethod = 'expr'
vim.wo.foldnestmax = 4
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

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
        navigation = { enable = true },
    },
    textobjects = {
        select = {
            enable = true,
            keymaps = {
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
                ['ac'] = '@class.outer',
                ['ic'] = '@class.inner',
            },
        },
        swap = {
            enable = true,
            swap_next = {
                ['<leader>a'] = '@parameter.inner'
            },
            swap_previous = {
                ['<leader>A'] = '@parameter.inner'
            },
        },
        move = {
            enable = true,
            goto_next_start = {
                [']m'] = '@function.outer',
                [']]'] = '@class.outer'
            },
            goto_next_end = {
                [']M'] = '@function.outer',
                [']['] = '@class.outer'
            },
            goto_previous_start = {
                ['[m'] = '@function.outer',
                ['[['] = '@class.outer'
            },
            goto_previous_end = {
                ['[M'] = '@function.outer',
                ['[]'] = '@class.outer'
            },
        },
        lsp_interop = {
            enable = true,
            peek_definition_code = {
                ['df'] = '@function.outer',
                ['dF'] = '@class.outer'
            },
        },
    },
    playground = { enable = true },
    rainbow = { enable = true },
    ensure_installed = 'all',
}
