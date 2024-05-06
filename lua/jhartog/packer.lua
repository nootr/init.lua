vim.cmd.packadd('packer.nvim')

local packer = require('packer')

return packer.startup(function(use)
    -- 📦 packer - A package manager
    use('wbthomason/packer.nvim')

    -- 📑 barbar - A tabline
    use({
        'romgrk/barbar.nvim',
        requires = { {'nvim-tree/nvim-web-devicons'} }
    })

    -- 🔭 telescope - A fuzzy finder
    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    })

    -- 🚦 lualine - A statusline
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })

    -- 🖌️ melange - A color scheme inspired by Gruvbox
    -- > Control flow should use warm colors and data should use cold colors.
    use('savq/melange')

    -- 🖌️ nightfox - A highly customizable theme
    use('EdenEast/nightfox.nvim')

    -- 🌳 treesitter - A syntax highlighter
    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})

    -- 💬 lsp zero - A Language Server collection
    use({
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            --{'L3MON4D3/LuaSnip'},
            --{'rafamadriz/friendly-snippets'},
        }
    })

    -- ⚪ whitespace - A trailing whitespace highlighter
    use('johnfrankmorgan/whitespace.nvim')

    -- 🔏 signify - A git change indicator
    use('mhinz/vim-signify')

    -- 😴 lazygit - A git UI
    use('kdheepak/lazygit.nvim')

    -- 🌳 nvim tree - A file browser
    use({
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
    })

    -- 📇 formatter - A code formatter manager
    use('mhartington/formatter.nvim')

    -- 🦘 leap - A motion plugin
    use('ggandor/leap.nvim')
end)
