-- Telescope
local attach_mappings = function(_, map)
    map('i', '<C-a>', function()
        local entry = require('telescope.actions.state').get_selected_entry()
        if entry then envim_acp_add_file(entry.path or entry.value) end
    end)
    return true
end

require('telescope').setup({
    pickers = {
        find_files = { attach_mappings = attach_mappings },
        git_status = { attach_mappings = attach_mappings },
        git_files = { attach_mappings = attach_mappings },
    },
    extensions = {
        fzf = {
            fazzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
        }
    }
})
require('telescope').load_extension('fzf')
require('telescope').load_extension('ui-select')
require('telescope').load_extension('package_info')
