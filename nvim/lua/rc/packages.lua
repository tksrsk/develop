local load_config = function (config) pcall(require, 'plugin_settings.'..config) end

require('packer').startup({
    function(use)
        use {'wbthomason/packer.nvim', opt = true, setup = load_config('packer')}
        use {
            {'kylechui/nvim-surround', config = load_config('edit-support')},
            {
                'ZhiyuanLck/smart-pairs', 'winston0410/commented.nvim', 'folke/which-key.nvim', 'monkoose/matchparen.nvim',
                'kevinhwang91/nvim-bqf', 'johmsalas/text-case.nvim', 'delphinus/cellwidths.nvim', 'delphinus/emcl.nvim',
            }
        }
        use {'ahmedkhalf/project.nvim', config = load_config('workspace')}
        use {'rest-nvim/rest.nvim', config = load_config('rest-client')}
        use {
            {'michaelb/sniprun', run = 'bash ./install.sh', config = load_config('code-runner')},
            {'stevearc/overseer.nvim'}
        }
        use {
            {'navarasu/onedark.nvim', config = load_config('ui')},
            {
                'NvChad/nvim-colorizer.lua', 'yamatsum/nvim-cursorline', 'lukas-reineke/indent-blankline.nvim',
                'chentoast/marks.nvim', 'kevinhwang91/nvim-hlslens', 'sitiom/nvim-numbertoggle',
            },
        }
        use {
            {'nvim-lualine/lualine.nvim', config = load_config('statusline')},
            {
                'WhoIsSethDaniel/lualine-lsp-progress', 'utilyre/barbecue.nvim',
                'SmiteshP/nvim-navic', 'luukvbaal/statuscol.nvim',
            },
        }
        use {
            {'rainbowhxch/accelerated-jk.nvim', config = load_config('movement')},
            {'phaazon/hop.nvim', 'mfussenegger/nvim-treehopper', 'nacro90/numb.nvim'},
        }
        use {
            {'lewis6991/gitsigns.nvim', config = load_config('git')},
            {'nvim-lua/plenary.nvim', 'TimUntersberger/neogit', 'sindrets/diffview.nvim'},
        }
        use {'kkvh/vim-docker-tools'}
        use {
            {'tpope/vim-dadbod', config = load_config('dbms')},
            {'kristijanhusak/vim-dadbod-ui'}
        }
        use {
            {'Shougo/denite.nvim', config = load_config('fuzzy-finder')},
            {
                'tk-shirasaka/denite-utils', 'nvim-telescope/telescope.nvim',
                'nvim-telescope/telescope-ui-select.nvim',
                {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
            },
        }
        use {
            {'hrsh7th/nvim-cmp', config = load_config('completion')},
            {
                'onsails/lspkind.nvim', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-path', 'hrsh7th/cmp-buffer',
                'hrsh7th/cmp-nvim-lsp-signature-help', 'L3MON4D3/LuaSnip', 'kristijanhusak/vim-dadbod-completion',
            },
        }
        use {
            {'neovim/nvim-lspconfig', config = load_config('lsp')},
            {
                'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim',
                'jose-elias-alvarez/null-ls.nvim', 'jay-babu/mason-null-ls.nvim',
                'DNLHC/glance.nvim', 'VonHeikemen/lsp-zero.nvim',
            },
        }
        use {'akinsho/toggleterm.nvim', config = load_config('terminal')}
        use {'tk-shirasaka/ejdict.nvim'}
        use {
            {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = load_config('treesitter')},
            {
                'nvim-treesitter/nvim-treesitter-refactor', 'nvim-treesitter/nvim-treesitter-textobjects',
                'nvim-treesitter/playground', 'mrjones2014/nvim-ts-rainbow', 'JoosepAlviste/nvim-ts-context-commentstring',
            },
        }
        use {
            {'mfussenegger/nvim-dap', config = load_config('debugger')},
            {
                'rcarriga/nvim-dap-ui', 'mxsdev/nvim-dap-vscode-js'
            }
        }
        use {
            {'nvim-tree/nvim-tree.lua', config = load_config('exploler')},
            {'nvim-tree/nvim-web-devicons'},
        }
        use {'nvim-neorg/neorg', run = ':Neorg sync-parsers', config = load_config('orgmode')}
        use {
            { 'iamcco/markdown-preview.nvim', run = 'cd app && npm install', config = load_config('browser-integration') },
            {'dhruvasagar/vim-open-url'},
        }
    end,
    config = {
        display = { open_fn = require('packer.util').float },
    }
})
