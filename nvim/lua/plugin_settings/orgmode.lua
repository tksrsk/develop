-- Orgmode
require('orgmode').setup({
    org_agenda_files = '/resources/orgmode/*',
    org_default_notes_file = '/resources/orgmode/refile.org',
    notifications = { enabled = true },
    mappings = {
        org = {
            org_toggle_checkbox = '<space>',
        }
    },
})
