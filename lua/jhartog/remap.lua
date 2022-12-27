-- Remap the leader key
vim.g.mapleader = ";"

-- Use 'jj' to escape
vim.keymap.set("i", "jj", "<ESC>", { noremap = true })

-- Override 'd' and 'c' to prevent them from writing to the clipboard
vim.keymap.set("n", "d", '"xd', { noremap = true })
vim.keymap.set("v", "d", '"xd', { noremap = true })
vim.keymap.set("n", "c", '"xc', { noremap = true })
vim.keymap.set("v", "c", '"xc', { noremap = true })

-- Windows and panes
vim.keymap.set("n", "<leader>w", "<C-w>")
vim.keymap.set("t", "<leader>w", "<C-\\><C-n><C-w>", { noremap = true })

-- Spawn terminal
vim.keymap.set("n", "<leader>t", ":below split +te<CR>")
vim.keymap.set("n", "<leader>T", ":below vertical split +te<CR>")

-- File browser
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")

-- Help
local home = os.getenv('HOME')
vim.keymap.set("n", "?", ":new " .. home .. "/.config/nvim/README.md<CR>")
