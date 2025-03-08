-- Kulala
require('kulala').setup({
    winbar = true,
    default_winbar_panes = { 'body', 'headers', 'headers_body', 'script_output', 'stats', 'verbose' },
    treesitter = true,
    show_variable_info_text = 'float',
    show_icons = 'signcolumn',
    global_keymaps = true,
})
