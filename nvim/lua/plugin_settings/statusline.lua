-- Lualine
require('lualine').setup({
    options = {
        theme = 'auto',
        globalstatus = true,
    },
    extensions = { 'nvim-dap-ui', 'nvim-tree', 'quickfix', 'toggleterm', 'overseer' },
    sections = {
        lualine_c = { 'filename', 'overseer', 'lsp_progress' }
    },
})

-- Barbecue
require('barbecue').setup()

-- Statuscol
local builtin = require('statuscol.builtin')
local C = require('statuscol.ffidef').C
local function foldfunc (args)
    local width = C.compute_foldcolumn(args.wp, 0)
    if width == 0 then return '' end

    local curr = C.fold_info(args.wp, args.lnum)
    local next = C.fold_info(args.wp, args.lnum + 1)
    local open = curr.lines == 0
    local hl = (curr.level + (open and 0 or 1)) % 2 == 0 and '%#Type#' or '%#Constant#'
    local text = ' '

    if curr.start == args.lnum and args.virtnum == 0 then
        text = open and '╭' or '├'
    elseif curr.level > 0 and curr.start ~= next.start and args.virtnum == 0 then
        text = curr.level >= next.level and '╰' or '│'
    else
        text = curr.level > 0 and '│' or ' '
    end

    return string.format(' %s%s%%## ', hl, text)
end
require('statuscol').setup({
    setopt = true,
    segments = {
        { sign = { name = { 'Diagnostic' }, maxwidth = 1, auto = true }, click = 'v:lua.ScSa' },
        { text = { builtin.lnumfunc }, click = 'v:lua.ScLa', },
        { sign = { name = { '.*' }, maxwidth = 2, colwidth = 1, auto = true }, click = 'v:lua.ScSa' },
        { sign = { name = { 'GitSigns' }, maxwidth = 1, colwidth = 1, auto = true }, click = 'v:lua.ScSa' },
        { text = { foldfunc }, click = 'v:lua.ScFa' },
    },
})
