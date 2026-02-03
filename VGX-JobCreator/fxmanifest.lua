fx_version 'cerulean'
game 'gta5'

author 'Just.A'
description 'VGX-JobCreator'
version '1.0.0'

ui_page 'html/index.html'

shared_scripts {
  'config.lua'
}

client_scripts {
  'client/main.lua'
}

server_scripts {
  '@oxmysql/lib/MySQL.lua',
  'server/*.lua',
}

files {
  'html/index.html',
  'html/style.css',
  'html/app.js',
  'html/sounds/*.mp3'
}

lua54 'yes'
