local api = vim.api

-- Menu
api.nvim_command([[
    amenu <silent> 10.01 .\ Vista :Vista!!<cr>
]])

-- Configs
vim.g.vista_default_executive = 'nvim_lsp'
