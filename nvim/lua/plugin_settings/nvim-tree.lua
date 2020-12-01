local api = vim.api

-- Menu
api.nvim_command([[
    amenu <silent> 10.21 .\ File\ Exproler    :LuaTreeToggle<cr>
]])
