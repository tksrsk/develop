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
            bracket_text = {
                one = { strategy = 'delete_all' },
                multi = { strategy = 'delete_all' },
            },
            text_bracket = {
                one = { strategy = 'leave_zero_above' },
                multi = { strategy = 'leave_zero_above' },
            },
        },
        empty_pre = {
            text_text = {
                one = { strategy = 'leave_zero_below' },
                multi = { strategy = 'leave_zero_below' },
            },
            bracket_text = {
                one = { strategy = 'delete_all' },
                multi = { strategy = 'delete_all' },
            },
            text_bracket = {
                one = { strategy = 'leave_zero_below' },
                multi = { strategy = 'leave_zero_below' },
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

-- Emcl
require('emcl').setup()
