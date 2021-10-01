-- Nvim Compe
require('cmp').setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    formatting = {
        format = function(entry, item)
            local kind = require('lspkind').presets.default[item.kind]
            item.kind = ({
                ["nvim_lsp"] = kind,
                ["nvim_lua"] = kind,
                ["vim-dadbod-completion"] = "",
                ["path"] = "",
                ["buffer"] = "",
            })[entry.source.name]
            item.menu = ({
                ["nvim_lsp"] = "[LSP]",
                ["nvim_lua"] = "[Lua]",
                ["vim-dadbod-completion"] = "[DB]",
                ["path"] = "[Path]",
                ["buffer"] = "[Buffer]",
            })[entry.source.name]
            return item
        end
    },
    sources = {
        { name = "nvim_lsp" };
        { name = "nvim_lua" };
        { name = "vim-dadbod-completion" },
        { name = "path" };
        { name = "buffer" };
    }
})
