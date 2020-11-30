local api = vim.api

-- Menu
api.nvim_command([[
    amenu <silent> 10.20 .\ Toggle\ File\ Exproler    :LuaTreeToggle<cr>
]])
