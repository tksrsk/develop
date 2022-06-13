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
        { name = 'nvim_lsp_signature_help' },
        { name = 'snippy' },
        { name = 'path' },
        { name = 'buffer' },
    },
    experimental = { ghost_text = true },
    view = { entries = 'native' }
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
