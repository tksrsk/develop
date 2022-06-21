-- Lualine
require('lualine').setup({
    options = {
        theme = 'auto',
        globalstatus = true,
    },
    extensions = { 'nvim-dap-ui', 'nvim-tree', 'quickfix', 'toggleterm' },
    sections = {
        lualine_c = {'filename', 'lsp_progress'}
    }
})

-- GPS
require('nvim-gps').setup()

-- Winbar
require('winbar').setup({ enabled = true })
