-- Options
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- Configs
local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
parser_config.org = {
  install_info = {
    url = 'https://github.com/milisims/tree-sitter-org',
    revision = 'f110024d539e676f25b72b7c80b0fd43c34264ef',
    files = {'src/parser.c', 'src/scanner.cc'},
  },
  filetype = 'org',
}

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
    max_lines = 1,
})
