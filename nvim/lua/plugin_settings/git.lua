-- Gitsigns
require('gitsigns').setup({
    on_attach = function ()
        vim.keymap.set('n', '[g', function () require('gitsigns').prev_hunk({ preview = true, greedy = false }) end, { buffer = 0 })
        vim.keymap.set('n', ']g', function () require('gitsigns').next_hunk({ preview = true, greedy = false }) end, { buffer = 0 })
    end,
    attach_to_untracked = false,
    current_line_blame = true,
    current_line_blame_formatter_opts = {
        relative_time = true,
    },
    word_diff = true,
    preview_config = { border = 'solid' },
    _signs_staged_enable = true,
})

-- Neogit
require('neogit').setup({
    disable_commit_confirmation = true,
    disable_insert_on_commit = false,
    graph_style = 'unicode',
    popup = { kind = 'floating' },
})

-- Diffview
require('diffview').setup({
    enhanced_diff_hl = true,
    view = {
        merge_tool = { layout = 'diff3_mixed' },
    }
})
