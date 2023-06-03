-- Nvim Compe
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

cmp.setup.filetype('denite-filter', {
    sources = {
        {
            name = 'buffer',
            option = {
                keyword_pattern = [[\%(-\?\d\+\%(\.\d\+\)\?\|\h\w*\%([\-\/\.]\w*\)*\)]],
                get_bufnrs = function ()
                    for _, win in ipairs(vim.api.nvim_list_wins()) do
                        local buf = vim.api.nvim_win_get_buf(win)
                        if vim.api.nvim_buf_get_option(buf, 'filetype') == 'denite' then
                            return { buf }
                        end
                    end
                    return {}
                end,
            }
        },
    },
})
