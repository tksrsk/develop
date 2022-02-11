-- Onedarkpro
local onedark = require('onedark')
onedark.setup()
onedark.load()

-- Signs
vim.fn.sign_define('DiagnosticSignError',   { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn',    { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo',    { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint',    { text = '', texthl = 'DiagnosticSignHint' })
vim.fn.sign_define('DapBreakpoint', {text='', texthl='', linehl='DiffAdd', numhl='DiffAdd'})
vim.fn.sign_define('DapStopped', {text='', texthl='', linehl='DiffDelete', numhl='DiffDelete'})

-- Colorizer
require('colorizer').setup({ '*' }, { css = true })


-- Foldsigns
require('foldsigns').setup()

-- Nvim Cursorline
require('nvim-cursorline').setup()

-- Indent Blankline
require("indent_blankline").setup({
    show_current_context = true,
})

-- Marks
require('marks').setup()

-- Stabilize
require('stabilize').setup()

-- Dressing
require('dressing').setup()

-- Pretty Fold
require('pretty-fold').setup()
