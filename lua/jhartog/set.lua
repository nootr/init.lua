-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Wrapping
vim.opt.wrap = true

-- Mouse
vim.opt.mouse = 'a'

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Blazingly fast updates
vim.opt.updatetime = 50

-- Color column
vim.opt.colorcolumn = '90'

-- Set virtual env
local set_venv_if_exists = function(dir)
    local pwd = os.getenv('PWD')
    local absolute_dir = pwd .. '/' .. dir

    if vim.fn.isdirectory(absolute_dir) == 1 then
        vim.env.VIRTUAL_ENV = absolute_dir
    end
end

set_venv_if_exists(".venv")
set_venv_if_exists("venv")
set_venv_if_exists(".virtualenv")
set_venv_if_exists("virtualenv")
