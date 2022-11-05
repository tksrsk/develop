-- Neorg
require('neorg').setup({
    load = {
        ['core.defaults'] = {},
        ['core.norg.dirman'] = {
            config = {
                workspaces = {
                    work = '/resources/orgmode/',
                },
            }
        },
        ['core.norg.concealer'] = {},
        ['core.norg.completion'] = {
            config = { engine = 'nvim-cmp' },
        },
        ['core.gtd.base'] = {
            config = { workspace = 'work' },
        },
    }
})

-- Femaco
require('femaco').setup({
    ensure_newline = function(base_filetype)
        return base_filetype == 'norg'
    end,
})
