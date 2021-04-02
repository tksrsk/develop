-- Gitsigns
require('gitsigns').setup({
    signs = {
        add = { show_count = true },
        change = { show_count = true },
        delete = { show_count = true },
        topdelete = { show_count = true },
        changedelete = { show_count = true },
    },
    linehl = true,
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

        return {{ '    '..text, 'Comment'}}
    end
})
