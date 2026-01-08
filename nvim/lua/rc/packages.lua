vim.pack.add({
    -- edit support
    'https://github.com/kylechui/nvim-surround',
    'https://github.com/hrsh7th/nvim-insx',
    'https://github.com/folke/which-key.nvim',
    'https://github.com/monkoose/matchparen.nvim',
    'https://github.com/kevinhwang91/nvim-bqf',
    'https://github.com/johmsalas/text-case.nvim',
    'https://github.com/delphinus/cellwidths.nvim',
    'https://github.com/delphinus/emcl.nvim',

    -- workspace
    'https://github.com/ahmedkhalf/project.nvim',
    'https://github.com/vuki656/package-info.nvim',
    'https://github.com/MunifTanjim/nui.nvim',

    -- rest client
    'https://github.com/mistweaverco/kulala.nvim',

    -- ui
    'https://github.com/max397574/startup.nvim',
    'https://github.com/navarasu/onedark.nvim',
    'https://github.com/NvChad/nvim-colorizer.lua',
    'https://github.com/sontungexpt/stcursorword',
    'https://github.com/shellRaining/hlchunk.nvim',
    'https://github.com/chentoast/marks.nvim',
    'https://github.com/kevinhwang91/nvim-hlslens',
    'https://github.com/sitiom/nvim-numbertoggle',
    'https://github.com/OXY2DEV/markview.nvim',
    'https://github.com/OXY2DEV/helpview.nvim',

    -- statusline
    'https://github.com/nvim-lualine/lualine.nvim',
    'https://github.com/utilyre/barbecue.nvim',
    'https://github.com/SmiteshP/nvim-navic',
    'https://github.com/luukvbaal/statuscol.nvim',

    -- movement
    'https://github.com/rainbowhxch/accelerated-jk.nvim',
    'https://github.com/folke/flash.nvim',
    'https://github.com/nacro90/numb.nvim',

    -- git
    'https://github.com/lewis6991/gitsigns.nvim',
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/NeogitOrg/neogit',
    'https://github.com/sindrets/diffview.nvim',

    -- dbms
    'https://github.com/kndndrj/nvim-dbee',

    -- fuzzy finder
    'https://github.com/nvim-telescope/telescope.nvim',
    'https://github.com/nvim-telescope/telescope-ui-select.nvim',
    'https://github.com/nvim-telescope/telescope-fzf-native.nvim',

    -- ai
    'https://github.com/carlos-algms/agentic.nvim',
    'https://github.com/ravitemer/mcphub.nvim',

    -- lsp
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/mason-org/mason.nvim',
    'https://github.com/mason-org/mason-lspconfig.nvim',
    'https://github.com/creativenull/efmls-configs-nvim',
    'https://github.com/onsails/lspkind.nvim',
    'https://github.com/DNLHC/glance.nvim',
    'https://github.com/soulis-1256/eagle.nvim',
    'https://github.com/rafamadriz/friendly-snippets',

    -- terminal
    'https://github.com/akinsho/toggleterm.nvim',

    -- treesitter
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
    'https://github.com/MeanderingProgrammer/treesitter-modules.nvim',
    'https://github.com/HiPhish/rainbow-delimiters.nvim',

    -- debugger
    'https://github.com/mfussenegger/nvim-dap',
    'https://github.com/rcarriga/nvim-dap-ui',
    'https://github.com/mxsdev/nvim-dap-vscode-js',
    'https://github.com/nvim-neotest/nvim-nio',

    -- exploler
    'https://github.com/nvim-neo-tree/neo-tree.nvim',
    'https://github.com/nvim-tree/nvim-web-devicons',

    -- note taking
    'https://github.com/zk-org/zk-nvim',
})

require('plugin_settings.edit-support')
require('plugin_settings.workspace')
require('plugin_settings.rest-client')
require('plugin_settings.ui')
require('plugin_settings.statusline')
require('plugin_settings.movement')
require('plugin_settings.git')
require('plugin_settings.dbms')
require('plugin_settings.fuzzy-finder')
require('plugin_settings.ai')
require('plugin_settings.lsp')
require('plugin_settings.terminal')
require('plugin_settings.treesitter')
require('plugin_settings.debugger')
require('plugin_settings.exploler')
require('plugin_settings.note-taking')
