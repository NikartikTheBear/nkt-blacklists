CreateThread(function()
    while true do
        Wait(2000)
            
        if Config.VehBlacklist then
        local vehiclePool = GetGamePool('CVehicle')
            for i = 1, #vehiclePool do
                for j = 1, #Config.Vehs, 1 do
                    local hash = GetHashKey(Config.Vehs[j])
                    if GetEntityModel(hash) then
                        DeleteEntity(vehiclePool[i]) 
                    end
                end
            end
        end

        if Config.PropsBlacklist then
        local objectPool = GetGamePool('CObject')
            for i=1, #objectPool do
                for j = 1, #Config.Props, 1 do
                    local hash = GetHashKey(Config.Props[j])
                    if GetEntityModel(hash) then
                        DeleteEntity(objectPool[i]) 
                    end
                end
            end
        end

        if Config.DisablePickups then
        local pickupPool = GetGamePool('CPickup')
            for i=1, #pickupPool do
                DeleteEntity(pickupPool[i]) 
            end
        end

        if Config.PedsBlacklist then
        local pedsPool = GetGamePool('CPed')       
            for i = 1, #pedsPool do
                for j = 1, #Config.Peds, 1 do
                    local hash = GetHashKey(Config.Peds[j])
                    if GetEntityModel(hash) then
                        DeleteEntity(pedsPool[i]) 
                    end
                end
            end
        end
    end
end)
