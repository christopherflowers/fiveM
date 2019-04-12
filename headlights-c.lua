Ped player = GetPlayerPed(-1)
vehicle = player.CurrentVehicle
VehicleDoor headlights
backLeftDoorVehicles = {"ntypex"}

Citizen.CreateThread(function()

    if (IS_PED_IN_VEHICLE(player, vehicle, true))
        if (IS_PED_IN_MODEL(player, "ntypex"))
            SET_VEHICLE_DOOR_OPEN(vehicle, 0, false, true)
        end
    end

end)