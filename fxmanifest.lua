------------------------------------------------------------------------
------------------------------------------------------------------------
--		    Don't touch if you don't know what you're doing.		  --
--     For support join my discord: https://discord.gg/Z9Mxu72zZ6     --
--																	  --
------------------------------------------------------------------------
------------------------------------------------------------------------

fx_version 'cerulean'
game 'gta5'

title 'Gun Store'
description 'Gun Store with Andyyy Currency System'
author 'Andyyy#7666'
version 'v1.1'

shared_scripts {
    'config.lua',
    '@ox_lib/init.lua'
} 

server_script 'source/server.lua'

client_scripts {
    'source/NativeUI.lua',
    'source/menu.lua',
    'source/client.lua'
}


lua54 'yes'