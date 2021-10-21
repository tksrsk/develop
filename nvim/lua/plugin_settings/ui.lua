-- Onedarkpro
local onedarkpro = require('onedarkpro')
onedarkpro.setup({
    options = {
        highlight_cursorline = true,
    },
    hlgroups = {
        GitSignsCurrentLineBlame = { sp = '${green}', style = 'underline' },
        TSDefinition = { sp = '${blue}', style = 'undercurl' },
        TSDefinitionUsage = { sp = '${yellow}', style = 'undercurl' },
    }
})
onedarkpro.load()

-- Signs
vim.fn.sign_define('LspDiagnosticsSignError', { text = '', texthl = 'LspDiagnosticsSignError' })
vim.fn.sign_define('LspDiagnosticsSignWarning', { text = '', texthl = 'LspDiagnosticsSignWarning' })
vim.fn.sign_define('LspDiagnosticsSignInformation', { text = '', texthl = 'LspDiagnosticsSignInformation' })
vim.fn.sign_define('LspDiagnosticsSignHint', { text = '', texthl = 'LspDiagnosticsSignHint' })
vim.fn.sign_define('DapBreakpoint', {text='', texthl='', linehl='DiffAdd', numhl='DiffAdd'})
vim.fn.sign_define('DapStopped', {text='', texthl='', linehl='DiffDelete', numhl='DiffDelete'})

-- Colorizer
require('colorizer').setup({ '*' }, { css = true })

-- Lualine
require('lualine').setup({
    options = { theme = 'onedark' },
    sections = {
        lualine_b = {
            'branch',
            'diff',
            { 'diagnostics', sources = { 'nvim_lsp' } },
        }
    },
    extensions = { 'nvim-tree' },
})

-- Foldsigns
require('foldsigns').setup()

-- Hop
require('hop').setup({ create_hl_autocmd = false })
vim.api.nvim_set_keymap('n', '<leader>b', '<cmd>HopWordBC<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>w', '<cmd>HopWordAC<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>k', '<cmd>HopLineBC<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>j', '<cmd>HopLineAC<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>HopChar1AC<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>F', '<cmd>HopChar1BC<cr>', {})
vim.api.nvim_set_keymap('o', 'm', "<cmd>lua require('tsht').nodes()<cr>", {})
vim.api.nvim_set_keymap('v', 'm', ":lua require('tsht').nodes()<cr>", { noremap = true })

-- Indent Blankline
require("indent_blankline").setup {
    buftype_exclude = { 'terminal', 'nofile' },
    show_current_context = true,
}

-- Marks
require('marks').setup({})

-- Stabilize
require('stabilize').setup()
