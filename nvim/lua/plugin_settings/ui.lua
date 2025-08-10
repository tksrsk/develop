-- Startup
require('startup').setup()

-- Onedark
require('onedark').setup({
    colors = { bg1 = '#181a1f', bg3 = '#154f7e' },
    highlights = {
        ['@comment'] = { fmt = 'italic,altfont' },
        ['@spell'] = { fmt = 'altfont' }
    }
})
require('onedark').load()

-- Signs
vim.fn.sign_define('DapBreakpoint', { text='', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointCondition', { text='ﳁ', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointRejected', { text='', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl= 'DapBreakpoint' })
vim.fn.sign_define('DapLogPoint', { text='', texthl='DapLogPoint', linehl='DapLogPoint', numhl= 'DapLogPoint' })
vim.fn.sign_define('DapStopped', { text='', texthl='DapStopped', linehl='DapStopped', numhl= 'DapStopped' })

-- Colorizer
require('colorizer').setup({
    user_default_options = { css = true },
})

-- Mini Cursorline
require('stcursorword').setup()

-- Hlchunk
require('hlchunk').setup({
    chunk = { enable = true },
})

-- Marks
require('marks').setup()

-- Hlslens
require('hlslens').setup()

-- Markview
require('markview').setup({
    preview = {
        filetypes = { 'markdown', 'Avante', 'html.kulala_ui' },
        ignore_buftypes = {},
        icon_provider = 'devicons',
    },
    experimental = { check_rtp = false },
})
