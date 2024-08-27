--[[    cfx.re information    ]]--
use_experimental_fxv2_oal 'yes'
fx_version 'cerulean'
lua54 'yes'
game 'gta5'

--[[    resource information    ]]--
name 'mi_template'
author 'author_here'
version '0.0.0'
repository 'https://github.com/user_here/template'
description 'change_for_resource'

--[[    dependancies    ]]--
dependencies { 
    '/server:7290',
    '/onesync',
    'ox_lib',
    'ox_target',
    'ox_inventory',
    'ox_core'
}

--[[    manifest information    ]]--
shared_scripts {
    -- overextended dependancies
    '@ox_lib/init.lua',
    '@ox_core/lib/init.lua',

    -- core resources
    'shared/*.lua',
    'data/*.lua',
    'utils/*.lua'
}

client_scripts {
    -- overextended dependancies
    '@ox_core/imports/client.lua',

    -- core resources
    'client/**/*.lua'
}

server_scripts {
    -- overextended dependancies
    '@oxmysql/lib/MySQL.lua',
    '@ox_core/imports/server.lua',

    -- core resources
    'server/**/*.lua'
}

files { 'locales/*.json' }