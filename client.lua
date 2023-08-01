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
local props = {
    "prop_cs_burger_01"
}
local peds = {

}
CreateThread(function()
    while true do
        Wait(2000)
        local objectPool = GetGamePool('CObject')
        local vehiclePool = GetGamePool('CVehicle')
        local pickupPool = GetGamePool('CPickup')
        local pedsPool = GetGamePool('CPed')

        for i = 1, #vehiclePool do
            for j = 1, #vehs, 1 do
                local hash = GetHashKey(vehs[j])
                if GetEntityModel(hash) then
                    DeleteEntity(vehiclePool[i]) 
                end
            end
        end
        for i=1, #objectPool do
            for j = 1, #props, 1 do
                local hash = GetHashKey(props[j])
                if GetEntityModel(hash) then
                    DeleteEntity(objectPool[i]) 
                end
            end
        end
        for i=1, #pickupPool do
            DeleteEntity(objectPool[i]) 
        end
        for i = 1, #pedsPool do
            for j = 1, #peds, 1 do
                local hash = GetHashKey(peds[j])
                if GetEntityModel(hash) then
                    DeleteEntity(pedsPool[i]) 
                end
            end
        end
    end
end)
