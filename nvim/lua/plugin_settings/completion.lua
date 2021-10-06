-- Nvim Compe
require('cmp').setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    formatting = {
        format = require('lspkind').cmp_format({ with_text = false })
    },
    sources = {
        { name = "nvim_lsp" };
        { name = "nvim_lua" };
        { name = "vim-dadbod-completion" },
        { name = "path" };
        { name = "buffer" };
    }
})
