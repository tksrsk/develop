-- Surround
require('surround').setup({})

-- Smart pairs
require('pairs'):setup()

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
