require('cmp').setup.buffer({
    sources = {
        {
            name = 'buffer',
            option = {
                keyword_pattern = [[\%(-\?\d\+\%(\.\d\+\)\?\|\h\w*\%([\-\/\.]\w*\)*\)]],
                get_bufnrs = function ()
                    for _, win in ipairs(vim.api.nvim_list_wins()) do
                        local buf = vim.api.nvim_win_get_buf(win)
                        if vim.api.nvim_buf_get_option(buf, 'filetype') == 'denite' then
                            return { buf }
                        end
                    end
                    return {}
                end,
            }
        },
    },
})
