-- Lualine
require('lualine').setup({
    options = {
        theme = 'auto',
        globalstatus = true,
    },
    extensions = { 'nvim-tree' },
    sections = {
        lualine_c = {'filename', 'lsp_progress'}
    }
})

-- GPS
require('nvim-gps').setup()

-- Winbar
require('winbar').setup()
