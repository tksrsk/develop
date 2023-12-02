-- Onedark
require('onedark').load()

-- Signs
vim.fn.sign_define('DapBreakpoint', {text='', texthl='', linehl='DiffAdd', numhl='DiffAdd'})
vim.fn.sign_define('DapStopped', {text='', texthl='', linehl='DiffDelete', numhl='DiffDelete'})

-- Colorizer
require('colorizer').setup({
    user_default_options = { css = true },
})

-- Mini Cursorline
require('stcursorword').setup()

-- Indent Blankline
require('ibl').setup()

-- Marks
require('marks').setup()

-- Hlslens
require('hlslens').setup()
