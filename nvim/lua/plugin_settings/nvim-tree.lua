local api = vim.api

-- Menu
api.nvim_command([[
    amenu .\ File\ Exproler   :LuaTreeToggle<cr>
]])
