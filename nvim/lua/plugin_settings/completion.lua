-- Nvim Cmp
local cmp = require('cmp')

cmp.setup({
    preselect = 'item',
    completion = { completeopt = 'menu,menuone,noinsert' },
    sources = {
        {name = 'neorg'},
        {name = 'path'},
        {name = 'nvim_lsp'},
        {name = 'buffer'},
        {name = 'vsnip'},
        {name = 'cody'},
    },
    mapping = cmp.mapping.preset.insert({
        ['<tab>'] = cmp.mapping(function(fallback)
            if vim.fn['vsnip#available'](1) == 1 then
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<plug>(vsnip-expand-or-jump)', true, true, true), '', true)
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<s-tab>'] = cmp.mapping(function(fallback)
            if vim.fn['vsnip#jumpable'](-1) == 1 then
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<plug>(vsnip-jump-prev)', true, true, true), '', true)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    snippet = {
      expand = function(args) vim.snippet.expand(args.body) end,
    },
    formatting = {
        format = require('lspkind').cmp_format({ with_text = false })
    },
    experimental = { ghost_text = {} },
    view = { entries = 'native' },
})

-- Sg
require('sg').setup()
