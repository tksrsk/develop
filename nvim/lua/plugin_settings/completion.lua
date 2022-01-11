-- Nvim Compe
require('cmp').setup({
    snippet = {
      expand = function(args)
        require('snippy').expand_snippet(args.body)
      end,
    },
    formatting = {
        format = require('lspkind').cmp_format({ with_text = false })
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'snippy' },
        { name = 'path' },
        { name = 'buffer' },
    },
    experimental = {
        native_menu = true,
        ghost_text = true,
    },
})

-- Snippy
require('snippy').setup({
    mappings = {
        is = {
            ['<tab>'] = 'expand_or_advance',
            ['<s-tab>'] = 'previous',
        },
        nx = {
            ['<leader>x'] = 'cut_text',
        },
    },
})
