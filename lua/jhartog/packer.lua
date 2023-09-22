vim.cmd.packadd('packer.nvim')

local packer = require('packer')

return packer.startup(function(use)
    -- 📦 packer - A package manager
    use('wbthomason/packer.nvim')

    -- 🔭 telescope - A fuzzy finder
    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    })

    -- 🚦 lualine - A statusline
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    })

    -- 🖌️ melange - A color scheme inspired by Gruvbox
    -- > Control flow should use warm colors and data should use cold colors.
    use('savq/melange')

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

    -- ✨ noice - A beautiful UI
    use({
        'folke/noice.nvim',
        requires = {
            'MunifTanjim/nui.nvim',
            'rcarriga/nvim-notify',
        }
    })

    -- 🌳 nvim tree - A file browser
    use({
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
    })

    -- 📇 formatter - A code formatter manager
    use('mhartington/formatter.nvim')

    -- 🦀 rust-tools - A plugin to improve your Rust experience
    use('simrat39/rust-tools.nvim')

    -- 🦘 leap - A motion plugin
    use('ggandor/leap.nvim')

    -- 🤖 codeium - A code completion AI
    use({
      'Exafunction/codeium.vim',
      config = function ()
        vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
        vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
        vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
        vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
      end
    })
end)
