-- Colorscheme
vim.cmd([[colorscheme tokyonight]])

-- Colorizer
require('colorizer').setup({ '*' }, { css = true })

-- Statusline
require('lualine').setup({
    options = { theme = 'tokyonight' },
    sections = {
        lualine_b = {
            'branch',
            'diff',
            { 'diagnostics', sources = { 'nvim_lsp' } },
        }
    },
})
