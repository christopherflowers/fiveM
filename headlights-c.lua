local player = GetPlayerPed(-1)
local vehicle = GET_VEHICLE_PED_IS_USING(player)
local doorOpen = IS_VEHICLE_DOOR_FULLY_OPEN(vehicle, 2)
-- local backLeftDoorVehicles = {"ntypex"}

Citizen.CreateThread(function()

    if (IS_PED_IN_VEHICLE(player, vehicle, true))
        if (IS_PED_IN_MODEL(player, "ntypex"))
            if (doorOpen == false)
                SET_VEHICLE_DOOR_OPEN(vehicle, 2, false, true)
            end
        end
    end

end)