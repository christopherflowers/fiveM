function nearestVehicle()
    local pos = GetEntityCoords(PlayerPedId())
    local enitityWorld = GetOffsetFromEntityInWorldCoords(player, 0.0, 20.0, 0.0)
    local rayHandle = StartShapeTestRay(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, player, 0)
    local vehicleHandle = GetShapeTestResult(rayHandle)
    return vehicleHandle
end

function toggleHeadlights(player, cars) 
    local vehicle = GetVehiclePedIsIn(player, false)
    if (isBrDoorCar(GetEntityModel(vehicle)), cars) then
        if (IsVehicleDoorFullyOpen(vehicle, 2)) then
            SetVehicleDoorShut(vehicle, 2, true)
        else
            SetVehicleDoorOpen(vehicle, 2, true)
        end
    else
        notify("~r~No Pop UP Headlights Available")
    end
end

function headlightOn(vehicle)
    SetVehicleDoorOpen(vehicle, 2, false, true)
end

function isBrDoorCar(model, cars) 
    for i = 0, 1 do
        if (vehicle.Model = cars[i]) then
            return true
        end
    return false
end

function notify(msg) {
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
}