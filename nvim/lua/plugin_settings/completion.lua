-- Nvim Cmp
local cmp = require('cmp')

cmp.setup({
    preselect = 'item',
    completion = { completeopt = 'menu,menuone,noinsert' },
    sources = {
        {name = 'path'},
        {name = 'nvim_lsp_signature_help'},
        {name = 'nvim_lsp'},
        {name = 'buffer'},
        {name = 'luasnip'},
    },
    formatting = {
        format = require('lspkind').cmp_format({ with_text = false })
    },
    experimental = { ghost_text = {} },
    view = { entries = 'native' },
})

cmp.setup.filetype({ 'sql', 'mysql', 'plsql' }, {
    sources = {
        { name = 'vim-dadbod-completion' },
        { name = 'buffer' },
    },
})

cmp.setup.filetype('norg', {
    sources = {
        { name = 'neorg' },
        { name = 'buffer' },
        { name = 'path' },
    },
})
