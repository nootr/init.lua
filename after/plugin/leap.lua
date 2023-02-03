require('leap').add_default_mappings()

-- Remove leap's "x" remap
pcall(vim.keymap.del, {'x', 'o'}, 'x')
pcall(vim.keymap.del, {'x', 'o'}, 'X')
