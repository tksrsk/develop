-- Menu
vim.cmd([[
    amenu <silent> 50.01 Git.Status     <cmd>Neogit<cr>
    amenu <silent> 50.02 Git.History    <cmd> DiffviewFileHistory<cr>
]])

-- Gitsigns
require('gitsigns').setup({
    attach_to_untracked = false,
    current_line_blame = true,
    current_line_blame_formatter_opts = {
        relative_time = true,
    },
    word_diff = true,
    preview_config = { border = 'solid' },
})

-- Neogit
require('neogit').setup({
    disable_commit_confirmation = true,
    disable_insert_on_commit = false,
    integrations = { diffview = true },
})

require('diffview').setup({
    enhanced_diff_hl = true,
})
