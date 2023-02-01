local home = os.getenv('HOME')
local telescope = require('telescope.builtin')

-- Remap the leader key
vim.g.mapleader = ';'

-- Use 'jj' to escape
vim.keymap.set('i', 'jj', '<ESC>', { noremap = true })

-- Format and write
vim.keymap.set('n', '<leader>fw', vim.cmd.FormatWrite)

-- Open lazygit
vim.keymap.set('n', '<leader>g', vim.cmd.LazyGit)

-- Override 'd' and 'c' to prevent them from writing to the clipboard
vim.keymap.set({'n', 'v'}, 'd', '"xd', { noremap = true })
vim.keymap.set({'n', 'v'}, 'c', '"xc', { noremap = true })

-- Center cursor after Ctrl+d/Ctrl+u
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true })

-- Windows and panes
vim.keymap.set('n', '<leader>w', '<C-w>')
vim.keymap.set('t', '<leader>w', '<C-\\><C-n><C-w>', { noremap = true })

-- Spawn terminal
vim.keymap.set('n', '<leader>t', ':below split +te<CR>')
vim.keymap.set('n', '<leader>T', ':below vertical split +te<CR>')

-- File browser
vim.keymap.set('n', '<leader>fb', ':Ex<CR>')
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fr', telescope.resume, {})
vim.keymap.set('n', '<leader>fs', telescope.live_grep, {})
vim.keymap.set('n', '<Tab>', vim.cmd.NvimTreeToggle)

-- Help
vim.keymap.set('n', '?', ':new ' .. home .. '/.config/nvim/docs/help.md<CR>')
