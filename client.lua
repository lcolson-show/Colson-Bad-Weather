--[[
    Weather Fixer Script
    Made by Liam Colson - Policing London
    Website: https://policinglondon.org

    This script automatically overrides bad weather types like foggy, overcast, or thunder
    with a preferred weather type (e.g., EXTRASUNNY).

    To use: add this script as a client resource and ensure it's started in your server.cfg.
]]

local badWeathers = {
    ["FOGGY"] = true,
    ["OVERCAST"] = true,
    ["THUNDER"] = true
}

local replacementWeather = "EXTRASUNNY" -- Preferred weather type

CreateThread(function()
    while true do
        Wait(5000) -- Check every 5 seconds

        local currentWeather = GetPrevWeatherTypeHashName()

        for weatherName in pairs(badWeathers) do
            if currentWeather == GetHashKey(weatherName) then
                print("Blocked weather detected: " .. weatherName .. " → Replacing with " .. replacementWeather)
                ClearWeatherTypePersist()
                SetWeatherTypeNowPersist(replacementWeather)
                SetWeatherTypeNow(replacementWeather)
                SetOverrideWeather(replacementWeather)
                break
            end
        end
    end
end)
