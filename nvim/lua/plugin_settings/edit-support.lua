-- Surround
require('nvim-surround').setup()

-- Smart pairs
require('pairs'):setup({
    delete = {
        empty_line = {
            bracket_bracket = {
                one = { strategy = 'delete_all' },
                multi = { strategy = 'delete_all' },
            },
            text_text = {
                one = { strategy = 'leave_zero_above' },
                multi = { strategy = 'leave_zero_above' },
            },
            text_bracket = {
                one = { strategy = 'leave_zero_above' },
                multi = { strategy = 'leave_zero_above' },
            },
        },
    },
    autojump_strategy = { unbalanced = 'all' }
})

-- Commented
require('commented').setup({
    prefer_block_comment = true,
    hooks = { before_comment = require("ts_context_commentstring.internal").update_commentstring },
})

-- Project
require('project_nvim').setup({
    ignore_lsp = { 'bashls', 'sqls' },
    silent_chdir = false,
})

-- Which Key
require('which-key').setup({ show_help = false })

-- Numb
require('numb').setup()

-- Matchparen
require('matchparen').setup()

-- Text case
require('textcase').setup()

-- Cellwidth
require('cellwidths').setup({ name = 'default' })
