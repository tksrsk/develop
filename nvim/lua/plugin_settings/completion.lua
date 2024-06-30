-- Nvim Cmp
local cmp = require('cmp')

cmp.setup({
    preselect = 'item',
    completion = { completeopt = 'menu,menuone,noinsert' },
    sources = {
        {name = 'neorg'},
        {name = 'path'},
        {name = 'nvim_lsp_signature_help'},
        {name = 'nvim_lsp'},
        {name = 'buffer'},
        {name = 'luasnip'},
    },
    snippet = {
      expand = function(args) vim.snippet.expand(args.body) end,
    },
    formatting = {
        format = require('lspkind').cmp_format({ with_text = false })
    },
    experimental = { ghost_text = {} },
    view = { entries = 'native' },
})
