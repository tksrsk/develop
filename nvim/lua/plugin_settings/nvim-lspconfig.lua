-- Menu
vim.cmd([[
    amenu <silent> 50.01 .---\ Symbols\ ---  <nop>
    amenu <silent> 50.02 .פּ\ Workspace       :lua vim.lsp.buf.workspace_symbol()<cr>
    amenu <silent> 50.03 .פּ\ Document        :lua vim.lsp.buf.document_symbol()<cr>
    amenu <silent> 50.04 .---\ Lends\ ---    <nop>
    amenu <silent> 50.05 .כֿ\ Hover           :lua vim.lsp.buf.hover()<cr>
    amenu <silent> 50.06 .\ Actions         :lua vim.lsp.buf.code_action()<cr>
    amenu <silent> 50.07 .\ Format          :lua vim.lsp.buf.formatting()<cr>
    amenu <silent> 50.08 .\ Definition      :lua vim.lsp.buf.definition()<cr>
    amenu <silent> 50.09 .\ Reference       :lua vim.lsp.buf.references()<cr>
    amenu <silent> 50.10 .---\ Error\ ---    <nop>
    amenu <silent> 50.11 .\ Next            :lua vim.lsp.diagnostic.goto_next()<cr>
    amenu <silent> 50.12 .\ Prev            :lua vim.lsp.diagnostic.goto_prev()<cr>
]])

-- Configs
local lspconfig = require'lspconfig'

lspconfig.bashls.setup({})
lspconfig.clangd.setup({})
lspconfig.sumneko_lua.setup({
    settings = { Lua = { diagnostics = { enable = true, globals = { "vim" } } } },
    cmd = 'lua-language-server'
})
lspconfig.vimls.setup({})
lspconfig.pyls_ms.setup({})
lspconfig.gopls.setup({})
lspconfig.intelephense.setup({})
lspconfig.tsserver.setup({})
lspconfig.angularls.setup({})
lspconfig.dockerls.setup({})
lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.jsonls.setup({})
lspconfig.yamlls.setup({})

-- Utils
local options = {
    mode = 'editor',
    numbering = true,
    list = { border = false },
    preview = { border = false },
}

vim.g.lsp_utils_location_opts = options
vim.g.lsp_utils_symbols_opts = options

-- Settings
vim.lsp.handlers['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
vim.lsp.handlers['textDocument/references'] = require'lsputil.locations'.references_handler
vim.lsp.handlers['textDocument/definition'] = require'lsputil.locations'.definition_handler
vim.lsp.handlers['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
vim.lsp.handlers['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
vim.lsp.handlers['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
vim.lsp.handlers['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
vim.lsp.handlers['workspace/symbol'] = require'lsputil.symbols'.workspace_handler
