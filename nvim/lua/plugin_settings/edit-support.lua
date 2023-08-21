-- Surround
require('nvim-surround').setup()

-- Nvim Insx
require('insx.preset.standard').setup()

-- Commented
require('commented').setup({
    prefer_block_comment = true,
    hooks = { before_comment = require("ts_context_commentstring.internal").update_commentstring },
})

-- Which Key
require('which-key').setup({ show_help = false })

-- Numb
require('numb').setup()

-- Matchparen
require('matchparen').setup()

-- Text case
require('textcase').setup()

-- Cellwidth
require('cellwidths').setup({ name = 'default' })

-- Emcl
require('emcl').setup()
