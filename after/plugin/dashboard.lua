local db = require('dashboard')
local home = os.getenv('HOME')

db.preview_command = 'cat | lolcat'
db.preview_file_path = home .. '/.config/nvim/static/island.cat'
db.preview_file_height = 8
db.preview_file_width = 9
db.custom_center = {
    {icon = '  ',
    desc = 'File Browser  ',
    action =  'Ex',
    shortcut = ';pv'},
    {icon = '  ',
    desc = 'Find File     ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = ';pf'},
    {icon = '  ',
    desc = 'Find word     ',
    action = 'Telescope live_grep',
    shortcut = ';ps'},
}
