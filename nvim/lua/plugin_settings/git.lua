-- Gitsigns
require('gitsigns').setup({
    on_attach = function ()
        vim.keymap.set('n', '[g', function () require('gitsigns').nav_hunk('prev', { preview = true, greedy = false }) end, { buffer = 0 })
        vim.keymap.set('n', ']g', function () require('gitsigns').nav_hunk('next', { preview = true, greedy = false }) end, { buffer = 0 })
    end,
    current_line_blame = true,
    word_diff = true,
    preview_config = { border = 'solid' },
})

-- Neogit
require('neogit').setup({
    disable_insert_on_commit = false,
    graph_style = 'kitty',
    kind = "floating",
    popup = { kind = 'floating' },
})

-- Diffview
require('diffview').setup({
    enhanced_diff_hl = true,
    view = {
        merge_tool = { layout = 'diff3_mixed' },
    }
})
