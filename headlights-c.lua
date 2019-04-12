local player = GetPlayerPed(-1)
local vehicle = GET_VEHICLE_PED_IS_USING(player)
-- local backLeftDoorVehicles = {"ntypex"}

Citizen.CreateThread(function()

    if (IS_PED_IN_VEHICLE(player, vehicle, true))
        if (IS_PED_IN_MODEL(player, "ntypex"))
            SET_VEHICLE_DOOR_OPEN(vehicle, 0, false, true)
        end
    end

end)