local function statuColumnFoldColumns()
    local lnum = vim.v.lnum
    local open = vim.fn.foldclosed(lnum) == -1
    local curr = vim.fn.foldlevel(lnum) + (open and 0 or 1)
    local prev = vim.fn.foldlevel(lnum - 1)
    local next = vim.fn.foldlevel(lnum + 1)
    local hl = curr % 2 == 0 and '%#Type#' or '%#Constant#'
    local text = ' '

    if curr > prev then
        text = open and '╭' or '├'
    elseif curr > next then
        text = open and '╰' or ' '
    else
        text = curr > 0 and '│' or ' '
    end

    return string.format('%s%s%%##', hl, text)
end

_G.ScFc = statuColumnFoldColumns
