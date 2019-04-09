RegisterCommand("clear", function()
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    notify("~r~Clear All Weapons")
end)

Citizen.CreateThread(function()

    local h_key = 74
    local x_key = 73
    while true do
        --need otherwise it will crash the server
        Citizen.Wait(1)
        if IsControlJustReleased(1, h_key) then
            giveWeapon("weapon_MarksmanPistol")
            giveWeapon("weapon_Knife")
            alert("~b~Given Weapons with ~INPUT_VEH_HEADLIGHT~")
        end
    end

end)