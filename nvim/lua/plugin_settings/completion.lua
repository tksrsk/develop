-- Nvim Compe
require('cmp').setup({
    formatting = {
        format = require('lspkind').cmp_format({ with_text = false })
    },
    experimental = { ghost_text = true },
    view = { entries = 'native' }
})
