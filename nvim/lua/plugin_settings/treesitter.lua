-- Configs
require('nvim-treesitter.configs').setup({
    highlight = { enable = true },
    incremental_selection = { enable = true },
    indent = { enable = true },
    refactor = {
        highlight_definitions = { enable = true },
        highlight_current_scope = { enable = true },
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
    context_commentstring = { enable = true },
    ensure_installed = 'all',
})
