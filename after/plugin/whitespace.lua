local ws = require('whitespace-nvim')

ws.setup({
    ignored_filetypes = { 'TelescopePrompt', 'Trouble', 'help', 'dashboard' },
})
