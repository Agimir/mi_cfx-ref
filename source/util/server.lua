
lib.locale()
-- lib.versionCheck('https://github.com/Mesa-Indigo/script_here')

Util = {}
local resource = GetCurrentResourceName()

Util.GetNetID = function(e)
    Citizen.Wait(100)
    local i = NetworkGetNetworkIdFromEntity(e)
    if i == nil then
        lib.print.error(locale('err_entity')..e)
    else
        if Debug then print(i) end
        return i
    end
end

Util.GetEntity = function(i)
    Citizen.Wait(100)
    local e = NetworkGetEntityFromNetworkId(i)
    if e == nil then
        lib.print.error(locale('err_entity')..i)
    else
        if Debug then print(e) end
        return e
    end
end

Util.DiscordLog = function(s, p, m)
    if Webhook == nil then return end
    local net = {
        ["color"] = '13075706',
        ["title"] = GetPlayerName(s),
        ["description"] = m,
        ["footer"] = {
            ["text"] = os.date('%H:%M - %d. %m. %Y', os.time()),
            ["icon_url"] = '',
        },
    }
    PerformHttpRequest(Webhook, function(err, text, headers) end,
    'POST', json.encode({ username = resource, embeds = net }),
    { ['Content-Type'] = 'application/json' })
end