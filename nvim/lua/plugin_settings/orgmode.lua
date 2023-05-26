-- Neorg
require('neorg').setup({
    load = {
        ['core.defaults'] = {},
        ['core.dirman'] = {
            config = {
                workspaces = {
                    work = '/resources/orgmode/',
                },
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
