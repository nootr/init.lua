local ts = require('nvim-treesitter.configs')

ts.setup({
    ensure_installed = { 'help', 'javascript', 'typescript', 'python', 'c', 'lua', 'rust' },
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})
