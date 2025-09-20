local load_config = function (config)
    return function() pcall(require, 'plugin_settings.'..config) end
end

vim.opt.rtp:prepend(vim.fn.stdpath('data')..'/lazy/lazy.nvim')
require('lazy').setup({
    {'kylechui/nvim-surround', config = load_config('edit-support'), dependencies = {
        'hrsh7th/nvim-insx', 'folke/which-key.nvim', 'monkoose/matchparen.nvim', 'kevinhwang91/nvim-bqf',
        'johmsalas/text-case.nvim', 'delphinus/cellwidths.nvim', 'delphinus/emcl.nvim',
    }},
    {'ahmedkhalf/project.nvim', config = load_config('workspace'), dependencies = {
        'vuki656/package-info.nvim', 'MunifTanjim/nui.nvim'
    }},
    {'mistweaverco/kulala.nvim', config = load_config('rest-client')},
    {'michaelb/sniprun', build = 'bash ./install.sh', config = load_config('code-runner'), dependencies = {
        'stevearc/overseer.nvim'
    }},
    {'max397574/startup.nvim', config = load_config('ui'), dependencies = {
        'navarasu/onedark.nvim', 'NvChad/nvim-colorizer.lua', 'sontungexpt/stcursorword',
        'shellRaining/hlchunk.nvim', 'chentoast/marks.nvim', 'kevinhwang91/nvim-hlslens',
        'sitiom/nvim-numbertoggle', 'OXY2DEV/markview.nvim', 'OXY2DEV/helpview.nvim'
    }},
    {'nvim-lualine/lualine.nvim', config = load_config('statusline'), dependencies = {
        'utilyre/barbecue.nvim', 'SmiteshP/nvim-navic', 'luukvbaal/statuscol.nvim'
    }},
    {'rainbowhxch/accelerated-jk.nvim', config = load_config('movement'), dependencies = {
        'folke/flash.nvim', 'nacro90/numb.nvim'
    }},
    {'lewis6991/gitsigns.nvim', config = load_config('git'), dependencies = {
        'nvim-lua/plenary.nvim', 'NeogitOrg/neogit', 'sindrets/diffview.nvim'
    }},
    {'kndndrj/nvim-dbee', build = function() require('dbee').install('go') end, config = load_config('dbms')},
    {'nvim-telescope/telescope.nvim', config = load_config('fuzzy-finder'), dependencies = {
        'nvim-telescope/telescope-ui-select.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    }},
    {'yetone/avante.nvim', build = 'make', config = load_config('ai'), dependencies = {
        'sourcegraph/sg.nvim', 'olimorris/codecompanion.nvim', 'Davidyz/VectorCode',
        { 'ravitemer/mcphub.nvim', build = 'npm install -g mcp-hub@latest' }
    }},
    {'neovim/nvim-lspconfig', config = load_config('lsp'), dependencies = {
        'mason-org/mason.nvim', 'mason-org/mason-lspconfig.nvim', 'creativenull/efmls-configs-nvim',
        'onsails/lspkind.nvim', 'DNLHC/glance.nvim', 'soulis-1256/eagle.nvim', 'rafamadriz/friendly-snippets'
    }},
    {'akinsho/toggleterm.nvim', config = load_config('terminal')},
    {'nvim-treesitter/nvim-treesitter', branch = 'main', build = ':TSUpdate', config = load_config('treesitter'), dependencies = {
        'HiPhish/rainbow-delimiters.nvim'
    }},
    {'mfussenegger/nvim-dap', config = load_config('debugger'), dependencies = {
        'rcarriga/nvim-dap-ui', 'mxsdev/nvim-dap-vscode-js'
    }},
    {'nvim-neo-tree/neo-tree.nvim', config = load_config('exploler'), dependencies = {
        'nvim-tree/nvim-web-devicons'
    }},
    {'nvim-neorg/neorg', build = ':Neorg sync-parsers', config = load_config('note-taking'), dependencies = {
        'nvim-neorg/lua-utils.nvim', 'nvim-neotest/nvim-nio', 'pysan3/pathlib.nvim', 'zk-org/zk-nvim'
    }},
    {'iamcco/markdown-preview.nvim', build = 'cd app && npm install', config = load_config('browser-integration')},
}, {
    ui = {
        border = 'rounded'
    }
})

