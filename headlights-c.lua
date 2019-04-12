player = GetPlayerPed(-1)
bRDoorCars = {"ntypex"}

-- register command /h to turn headlights on and off if
-- the player is in the proper vehicle
RegisterCommand("h", function()
    toggleHeadlights(player, bRDoorCars)
end)

-- function that tries to open the rear back door of a car when
-- getting into the proper vehicle
Citizen.CreateThread(function()
    -- if player is getting into vehicle
    if (IsPedGettingIntoAVehicle(player)) then
        -- if raycast detected a vehicle
        if (nearestVehicle() ~= nil) then
            -- if model is "ntypex"
            if (isBrDoorCar(GetEntityModel(vehicleHandle), bRDoorCars)) then
                -- open rear door
                headlightsOn(vehicleHandle)
            end
        end
    end
end)