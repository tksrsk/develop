-- Onedarkpro
local onedark = require('onedark')
onedark.setup()
onedark.load()

-- Signs
vim.fn.sign_define('DapBreakpoint', {text='', texthl='', linehl='DiffAdd', numhl='DiffAdd'})
vim.fn.sign_define('DapStopped', {text='', texthl='', linehl='DiffDelete', numhl='DiffDelete'})

-- Colorizer
require('colorizer').setup({
    user_default_options = { css = true },
})

-- Foldsigns
require('foldsigns').setup()

-- Nvim Cursorline
require('nvim-cursorline').setup()

-- Indent Blankline
require('indent_blankline').setup({
    show_current_context = true,
})

-- Marks
require('marks').setup()

-- Hlslens
require('hlslens').setup()

-- Statuscol
require('statuscol').setup()

-- Numbertoggle
require('numbertoggle').setup()
