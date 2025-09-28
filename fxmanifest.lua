fx_version 'cerulean'
game 'gta5'

author 'StnDev'
description 'Nicotine Pouches Script'
version '1.0.0'

lua54 'yes'

shared_script 'shared/config.lua'

client_scripts {
    '@ox_lib/init.lua',   
    'client/client.lua'
}

server_scripts {
    'server/server.lua'
}

dependency 'ox_lib'