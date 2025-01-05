-- Neorg
require('neorg').setup({
    load = {
        ['core.defaults'] = {},
        ['core.dirman'] = {
            config = {
                workspaces = {
                    work = '/resources/orgmode/',
                },
                default_workspace = 'work',
            }
        },
        ['core.ui.calendar'] = {},
        ['core.concealer'] = {},
        ['core.completion'] = {
            config = { engine = 'nvim-cmp' },
        },
        ['core.looking-glass'] = {},
    }
})

-- Zk
require('zk').setup({
    picker = 'telescope'
})
