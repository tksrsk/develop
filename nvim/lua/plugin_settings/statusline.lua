-- Setup
require('lualine').setup({
    options = { theme = 'onedark' },
    sections = {
        lualine_b = {
            'branch',
            'diff',
            { 'diagnostics', sources = { 'nvim_lsp' } },
        }
    },
})
