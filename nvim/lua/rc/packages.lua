local load_config = function (config) pcall(require, 'plugin_settings.'..config) end

require('packer').startup({
    function(use)
        use {'wbthomason/packer.nvim', opt = true, setup = load_config('packer')}
        use {
            {'kylechui/nvim-surround', config = load_config('edit-support')},
            {
                'hrsh7th/nvim-insx', 'folke/which-key.nvim', 'monkoose/matchparen.nvim', 'kevinhwang91/nvim-bqf',
                'johmsalas/text-case.nvim', 'delphinus/cellwidths.nvim', 'delphinus/emcl.nvim',
            }
        }
        use {
            {'ahmedkhalf/project.nvim', config = load_config('workspace')},
            {'vuki656/package-info.nvim', 'MunifTanjim/nui.nvim'}
        }
        use {'mistweaverco/kulala.nvim', config = load_config('rest-client')}
        use {
            {'michaelb/sniprun', run = 'bash ./install.sh', config = load_config('code-runner')},
            {'stevearc/overseer.nvim'}
        }
        use {
            {'max397574/startup.nvim', config = load_config('ui')},
            {
                'navarasu/onedark.nvim', 'NvChad/nvim-colorizer.lua', 'sontungexpt/stcursorword',
                'shellRaining/hlchunk.nvim', 'chentoast/marks.nvim', 'kevinhwang91/nvim-hlslens',
                'sitiom/nvim-numbertoggle', 'OXY2DEV/markview.nvim', 'OXY2DEV/helpview.nvim'
            },
        }
        use {
            {'nvim-lualine/lualine.nvim', config = load_config('statusline')},
            {'utilyre/barbecue.nvim', 'SmiteshP/nvim-navic', 'luukvbaal/statuscol.nvim'},
        }
        use {
            {'rainbowhxch/accelerated-jk.nvim', config = load_config('movement')},
            {'folke/flash.nvim', 'nacro90/numb.nvim'},
        }
        use {
            {'lewis6991/gitsigns.nvim', config = load_config('git')},
            {'nvim-lua/plenary.nvim', 'NeogitOrg/neogit', 'sindrets/diffview.nvim'},
        }
        use {'kndndrj/nvim-dbee', run = function() require('dbee').install('go') end, config = load_config('dbms')}
        use {
            {'nvim-telescope/telescope.nvim', config = load_config('fuzzy-finder')},
            {
                'nvim-telescope/telescope-ui-select.nvim',
                {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
            },
        }
        use {
            {'hrsh7th/nvim-cmp', config = load_config('completion')},
            {
                'onsails/lspkind.nvim', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-path', 'hrsh7th/cmp-buffer',
                'hrsh7th/cmp-vsnip', 'hrsh7th/vim-vsnip', 'rafamadriz/friendly-snippets', 'sourcegraph/sg.nvim'
            },
        }
        use {
            {'yetone/avante.nvim', run = 'make', config = load_config('ai')},
            {'zbirenbaum/copilot.lua', 'stevearc/dressing.nvim'}
        }
        use {
            {'neovim/nvim-lspconfig', config = load_config('lsp')},
            {
                'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim',
                'creativenull/efmls-configs-nvim', 'DNLHC/glance.nvim', 'soulis-1256/eagle.nvim'
            },
        }
        use {'akinsho/toggleterm.nvim', config = load_config('terminal')}
        use {
            {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = load_config('treesitter')},
            {'nvim-treesitter/nvim-treesitter-refactor', 'nvim-treesitter/nvim-treesitter-textobjects', 'HiPhish/rainbow-delimiters.nvim'},
        }
        use {
            {'mfussenegger/nvim-dap', config = load_config('debugger')},
            {
                'rcarriga/nvim-dap-ui', 'mxsdev/nvim-dap-vscode-js'
            }
        }
        use {
            {'nvim-neo-tree/neo-tree.nvim', config = load_config('exploler')},
            {'nvim-tree/nvim-web-devicons'},
        }
        use {
            {'nvim-neorg/neorg', run = ':Neorg sync-parsers', config = load_config('note-taking')},
            {'nvim-neorg/lua-utils.nvim', 'nvim-neotest/nvim-nio', 'pysan3/pathlib.nvim', 'zk-org/zk-nvim'}
        }
        use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install', config = load_config('browser-integration')}
    end,
    config = {
        display = { open_fn = require('packer.util').float },
    }
})
