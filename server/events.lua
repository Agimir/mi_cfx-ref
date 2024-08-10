-- check player on log in
AddEventHandler('ox:playerLoaded', function(source)
    local player = Ox.GetPlayer(source)
    if not player or not player.charId then return end

    if Debug then
        local data = {
            locale('user_name')..player.username,
            locale('char_stid')..player.stateId
        }
        print(json.encode(data, {indent=true}))
    end
end)

-- check player o log out
AddEventHandler('ox:playerLogout', function(source)
    local player = Ox.GetPlayer(source)
    if not player or not player.charId then return end

    if Debug then
        print(
            locale('load_in')..locale('user_name')..
            player.username.." | "..locale('char_stid')
            ..player.stateId
        )
    end
end)