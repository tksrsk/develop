-- Menu
vim.cmd([[
    amenu <silent> PopUp.Git\ Stage         <cmd>Gitsigns stage_hunk<cr>
    amenu <silent> PopUp.Git\ Reset         <cmd>Gitsigns reset_hunk<cr>
    vmenu <silent> PopUp.Git\ History       :DiffviewFileHistory<cr>
    amenu <silent> 10.21 Tools.Git.Status   <cmd>Neogit<cr>
    amenu <silent> 10.22 Tools.Git.History  <cmd>DiffviewFileHistory %<cr>
]])

-- Gitsigns
require('gitsigns').setup({
    attach_to_untracked = false,
    current_line_blame = true,
    current_line_blame_formatter_opts = {
        relative_time = true,
    },
    word_diff = true,
    show_deleted = true,
    preview_config = { border = 'solid' },
})

-- Neogit
require('neogit').setup({
    disable_commit_confirmation = true,
    disable_insert_on_commit = false,
    integrations = { diffview = true },
})

-- Diffview
require('diffview').setup({
    enhanced_diff_hl = true,
})
