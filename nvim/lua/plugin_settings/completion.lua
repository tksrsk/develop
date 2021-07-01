-- Nvim Compe
require('compe').setup {
    source = {
        path = true;
        buffer = true;
        calc = true;
        nvim_lsp = true;
        nvim_lua = true;
        zsh = true,
        vim_dadbod_completion = true,
    }
}

-- Lsp Kind
require('lspkind').init({ with_text = false })
