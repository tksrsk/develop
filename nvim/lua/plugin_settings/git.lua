-- Menu
vim.cmd([[
    amenu <silent> 10.51 .\ Git   <cmd>Neogit<cr>
]])

-- Gitsigns
require('gitsigns').setup({
    attach_to_untracked = false,
    current_line_blame = true,
    current_line_blame_formatter = function(_, blame_info)
        local text

        if blame_info.author == 'Not Committed Yet' then
            text = blame_info.author
        else
            text = string.format(
                '%s %s %s : %s',
                blame_info.abbrev_sha,
                os.date('%Y/%m/%d', tonumber(blame_info.author_time)),
                blame_info.author,
                blame_info.summary
            )
        end

        return {{' ', 'Normal'}, { '  '..text, 'GitSignsCurrentLineBlame'}}
    end,
    word_diff = true,
})

-- Neogit
require('neogit').setup({
    disable_commit_confirmation = true,
    integrations = { diffview = true },
})

require('diffview').setup({
    enhanced_diff_hl = true,
})
