local db = require('dashboard')
db.custom_center = {
    {icon = '  ',
    desc ='File Browser                            ',
    action =  'Ex',
    shortcut = 'SPC p v'},
    {icon = '  ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'SPC p f'},
    {icon = '  ',
    desc = 'Find  word                              ',
    action = 'Telescope live_grep',
    shortcut = 'SPC p s'},
}
