-- Options
vim.opt.fillchars = { foldopen = '▾', foldclose = '▸', eob = ' ' }
vim.opt.foldcolumn = 'auto:4'
vim.opt.foldmethod = 'expr'
vim.opt.foldopen = 'all'
vim.opt.foldclose = 'all'
vim.opt.foldnestmax = 4
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.scrolloff = 5

-- Extends
local persers = require("nvim-treesitter.parsers").get_parser_configs()
persers.http = {
  install_info = {
    url = "https://github.com/NTBBloodbath/tree-sitter-http",
    files = { "src/parser.c" },
    branch = "main",
  },
}

-- Configs
require('nvim-treesitter.configs').setup({
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
    context_commentstring = { enable = true },
    ensure_installed = 'all',
})

-- Treesitter Context
require('treesitter-context').setup({
    enable = true,
    throttle = true,
})
