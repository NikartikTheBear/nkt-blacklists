local vehs = {
    "vigilante",
    "hydra",
    "buzzard",
    "deluxo",
    "avenger",
    "akula",
    "apc",
    "barrage",
    "caracara",
    "cargobob",
    "chernobog",
    "hunter",
    "insurgent",
    "starling",
    "lazer",
    "bombushka",
    "savage",
    "rhino",
    "khanjali"
}

CreateThread(function()
    while true do
        Wait(2000)
        local vehiclePool = GetGamePool('CVehicle')
        for i = 1, #vehiclePool do
            for j = 1, #vehs, 1 do
                local hash = GetHashKey(vehs[j])
                if GetEntityModel(hash) then
                    DeleteEntity(vehiclePool[i]) 
                end
            end
        end
    end
end)
