RegisterCommand("help", function()
    msg("Server's Discord: *discord info here*")
    msg("Server's Website: *discord info here*")
end, false)

function msg(text) 
    TriggerEvent("chatMessage", "[Server]", {255, 0, 0}, text)
end