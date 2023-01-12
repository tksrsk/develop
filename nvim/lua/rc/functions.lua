local function statuColumnFoldColumns(lnum)
    local curr = vim.fn.foldlevel(lnum)
    local prev = vim.fn.foldlevel(lnum - 1)
    local next = vim.fn.foldlevel(lnum + 1)

    if curr > prev then
        return vim.fn.foldclosed(lnum) == -1 and '▾' or '▸'
    elseif curr > next then
        return vim.fn.foldclosed(lnum) == -1 and '' or ' '
    else
        return curr > 0 and '│' or ' '
    end
end

_G.ScFc = statuColumnFoldColumns
