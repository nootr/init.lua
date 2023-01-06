local db = require('dashboard')
local home = os.getenv('HOME')

db.preview_command = 'lolcat --seed 127'
db.preview_file_path = home .. '/.config/nvim/static/cat.cat'
db.preview_file_height = 12
db.preview_file_width = 23
db.header_pad = 10

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

db.footer_pad = 10
db.custom_footer = {
    'o kama pona tawa ilo sitelen mi a!'
}
