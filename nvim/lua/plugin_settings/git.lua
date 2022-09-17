-- Menu
vim.cmd([[
    amenu <silent> PopUp.Git\ Stage         <cmd>Gitsigns stage_hunk<cr>
    amenu <silent> PopUp.Git\ Reset         <cmd>Gitsigns reset_hunk<cr>
    vmenu <silent> PopUp.Git\ History       :DiffviewFileHistory<cr>
    amenu <silent> 10.21 Tools.Git.Status   <cmd>Neogit<cr>
    amenu <silent> 10.22 Tools.Git.Diff     <cmd>DiffviewOpen<cr>
    amenu <silent> 10.23 Tools.Git.History  <cmd>DiffviewFileHistory %<cr>
]])

-- Gitsigns
require('gitsigns').setup({
    on_attach = function ()
        vim.keymap.set('n', '[g', require('gitsigns').prev_hunk, { buffer = 0 })
        vim.keymap.set('n', ']g', require('gitsigns').next_hunk, { buffer = 0 })
    end,
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
    popup = { kind = 'floating' },
})

-- Diffview
require('diffview').setup({
    enhanced_diff_hl = true,
    view = {
        merge_tool = { layout = 'diff3_mixed' },
    }
})
