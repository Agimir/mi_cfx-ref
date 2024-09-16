
lib.locale()

Util = {}

Util.IGTime = function()
    local i = {
        s = GetClockSeconds(),
        m = GetClockMinutes(),
        h = GetClockHours()
    } return i
end

Util.IGDate = function()
    local i = {
        d = GetClockDayOfMonth(),
        w = GetClockDayOfWeek(),
        m = GetClockMonth()
    } return i
end

Util.VehicleInfo = function(v)
    local m = GetEntityModel(v)
    local d = GetDisplayNameFromVehicleModel(m)
    local n = GetLabelText(d)
    return n
end

Util.SetObject = function(o,h)
    SetEntityHeading(o, h)
    PlaceObjectOnGroundProperly(o)
    FreezeEntityPosition(o, true)
    SetEntityCollision(o, true, true)
end

Util.Teleport = function(p, x, y, z, w)
    DoScreenFadeOut(150)
    Wait(500)
    SetEntityCoords(p, x, y, z, false, false, false, false)
    SetEntityHeading(p, w)
    DoScreenFadeIn(150)
end

-- convert current value and max value to percentage
Cnt.GetPercentage = function(percent, maxvalue)
    if tonumber(percent) and tonumber(maxvalue) then
        return (maxvalue*percent)/100
    end
end

-- set color for progress bar in context menu
Cnt.GetProgressColor = function(percent)
    if percent >= 80 and percent <= 100 then
        return '#40C057'
    elseif percent <= 80 and percent >= 50 then
        return '#FFD43B'
    elseif percent <= 50 and percent >= 25 then
        return '#F76707'
    elseif percent <= 25 and percent >= 0 then
        return '#E03131'
    end
end