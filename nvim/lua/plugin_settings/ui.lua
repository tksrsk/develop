-- Onedarkpro
local onedark = require('onedark')
onedark.setup()
onedark.load()

-- Signs
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
require('ufo').setup({
    provider_selector = function(bufnr, filetype)
        return {'treesitter', 'indent'}
    end
})
