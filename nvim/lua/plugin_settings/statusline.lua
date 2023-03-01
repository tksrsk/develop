-- Lualine
require('lualine').setup({
    options = {
        theme = 'auto',
        globalstatus = true,
    },
    extensions = { 'nvim-dap-ui', 'nvim-tree', 'quickfix', 'toggleterm' },
    sections = {
        lualine_c = { 'filename', 'lsp_progress' }
    },
})

-- Barbecue
require('barbecue').setup()

-- Statuscol
local builtin = require('statuscol.builtin')
require('statuscol').setup({
    setopt = true,
    segments = {
        { text = { builtin.lnumfunc }, click = 'v:lua.ScLa' },
        { text = { '%s' }, click = 'v:lua.ScSa' },
        { text = { builtin.foldfunc, ' ' }, click = 'v:lua.ScFa' },
    },
})
