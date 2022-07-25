-- Lualine
local navic = require('nvim-navic')

require('lualine').setup({
    options = {
        theme = 'auto',
        globalstatus = true,
    },
    extensions = { 'nvim-dap-ui', 'nvim-tree', 'quickfix', 'toggleterm' },
    sections = {
        lualine_c = {'filename', 'lsp_progress'}
    },
    winbar = {
        lualine_c = {
            'lsp_progress',
            { navic.get_location, cond = navic.is_available },
        }
    },
})
