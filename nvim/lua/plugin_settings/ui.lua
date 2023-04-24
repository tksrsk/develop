-- Onedarkpro
require('onedark').load()

-- Signs
vim.fn.sign_define('DapBreakpoint', {text='', texthl='', linehl='DiffAdd', numhl='DiffAdd'})
vim.fn.sign_define('DapStopped', {text='', texthl='', linehl='DiffDelete', numhl='DiffDelete'})

-- Colorizer
require('colorizer').setup({
    user_default_options = { css = true },
})

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

-- Numbertoggle
require('numbertoggle').setup()
