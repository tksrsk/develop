-- Menu
vim.cmd([[
    amenu <silent> 10.21 Tools.Git  <cmd>Neogit<cr>
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
