local db = require('dashboard')
local home = os.getenv('HOME')

db.preview_command = 'lolcat'
db.preview_file_path = home .. '/.config/nvim/static/island.cat'
db.preview_file_height = 8
db.preview_file_width = 9
db.custom_center = {
    {icon = '  ',
    desc = '[F]ile [B]rowser  ',
    action =  'Ex',
    shortcut = ';fb'},
    {icon = '  ',
    desc = '[F]ind [F]ile     ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = ';ff'},
    {icon = '  ',
    desc = '[F]ind [S]tring   ',
    action = 'Telescope live_grep',
    shortcut = ';fs'},
}
