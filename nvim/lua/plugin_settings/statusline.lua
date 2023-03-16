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
local function foldfunc (args)
    local lnum = vim.v.lnum
    local open = vim.fn.foldclosed(lnum) == -1
    local curr = vim.fn.foldlevel(lnum) + (open and 0 or 1)
    local hl = curr % 2 == 0 and '#Type#' or '#Constant#'
    local foldtext = builtin.foldfunc(args)

    return foldtext:gsub('#%w+#', hl)
end
require('statuscol').setup({
    setopt = true,
    segments = {
        { text = { builtin.lnumfunc }, click = 'v:lua.ScLa' },
        { text = { '%s' }, click = 'v:lua.ScSa' },
        { text = { foldfunc, ' ' }, click = 'v:lua.ScFa' },
    },
})
