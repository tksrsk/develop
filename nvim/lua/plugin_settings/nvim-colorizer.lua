-- Options
local api = vim.api

api.nvim_set_option('termguicolors', true)

-- Configs
local colorizer = require'colorizer'

colorizer.setup { '*' }
