-- // Police Alerts Events \\ --

RegisterServerEvent('qb-police:server:send:alert:officer:down')
AddEventHandler('qb-police:server:send:alert:officer:down', function(Coords, StreetName, Info, Priority)
   TriggerClientEvent('qb-police:client:send:officer:down', -1, Coords, StreetName, Info, Priority)
end)

RegisterServerEvent('qb-police:server:send:alert:panic:button')
AddEventHandler('qb-police:server:send:alert:panic:button', function(Coords, StreetName, Info)
    local AlertData = {title = "Assistance officer", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "Emergency button pressed by "..Info['Callsign'].." "..Info['Firstname']..' '..Info['Lastname'].." at "..StreetName}
    TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
    TriggerClientEvent('qb-police:client:send:alert:panic:button', -1, Coords, StreetName, Info)
end)

RegisterServerEvent('qb-police:server:send:alert:gunshots')
AddEventHandler('qb-police:server:send:alert:gunshots', function(Coords, GunType, StreetName, InVeh)
    local AlertData = {title = "Shots fired",coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = 'Shots fired at ' ..StreetName}
    if InVeh then
      AlertData = {title = "Shots fired",coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = 'Shots fired from vehicle, at ' ..StreetName}
    end
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:alert:gunshots', -1, Coords, GunType, StreetName, InVeh)
end)

RegisterServerEvent('qb-police:server:send:alert:dead')
AddEventHandler('qb-police:server:send:alert:dead', function(Coords, StreetName)
   local AlertData = {title = "Injured Citizen", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "A injured civilian has been reported at "..StreetName}
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:alert:dead', -1, Coords, StreetName)
end)

RegisterServerEvent('qb-police:server:send:bank:alert')
AddEventHandler('qb-police:server:send:bank:alert', function(Coords, StreetName, CamId)
   local AlertData = {title = "Bank Alarm", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "A fleeca bank alarm has just been triggered at "..StreetName}
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:bank:alert', -1, Coords, StreetName, CamId)
end)

RegisterServerEvent('qb-police:server:send:big:bank:alert')
AddEventHandler('qb-police:server:send:big:bank:alert', function(Coords, StreetName)
   local AlertData = {title = "Bank Alarm", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "Pacific bank alarm has been triggered at "..StreetName}
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:big:bank:alert', -1, Coords, StreetName)
end)

RegisterServerEvent('qb-police:server:send:alert:jewellery')
AddEventHandler('qb-police:server:send:alert:jewellery', function(Coords, StreetName)
   local AlertData = {title = "Jeweler Alarm", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "The vangelico jeweler's alarm has just been triggered at "..StreetName}
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:alert:jewellery', -1, Coords, StreetName)
end)

RegisterServerEvent('qb-police:server:send:alert:store')
AddEventHandler('qb-police:server:send:alert:store', function(streetName, CCTV, Coords)
   local AlertData = {title = "Store Alarm", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "The alarm from a store has gone off at " ..streetName}
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:alert:store', -1, streetName, CCTV)
end)
RegisterServerEvent('qb-police:server:send:alert:ammunation')
AddEventHandler('qb-police:server:send:alert:ammunation', function(Coords, StreetName)
   local AlertData = {title = "Weaponstore alarm", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "The weaponstore alarm has just been triggered at "..StreetName}
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:alert:ammunation', -1, Coords, StreetName)
end)

RegisterServerEvent('qb-police:server:send:house:alert')
AddEventHandler('qb-police:server:send:house:alert', function(Coords, StreetName)
   local AlertData = {title = "House Alarm", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "A house alarm system has been triggered off at "..StreetName}
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:house:alert', -1, Coords, StreetName)
end)

RegisterServerEvent('qb-police:server:send:house2:alert')
AddEventHandler('qb-police:server:send:house2:alert', function(Coords, StreetName)
   local AlertData = {title = "House Alarm", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "A house alarm system has been triggered off at "..StreetName}
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:house2:alert', -1, Coords, StreetName)
end)

RegisterServerEvent('qb-police:server:send:house3:alert')
AddEventHandler('qb-police:server:send:house3:alert', function(Coords, StreetName)
   local AlertData = {title = "House Alarm", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "A house alarm system has been triggered off at "..StreetName}
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:house3:alert', -1, Coords, StreetName)
end)

RegisterServerEvent('qb-police:server:send:house4:alert')
AddEventHandler('qb-police:server:send:house4:alert', function(Coords, StreetName)
   local AlertData = {title = "House Alarm", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "A house alarm system has been triggered off at "..StreetName}
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:house4:alert', -1, Coords, StreetName)
end)

RegisterServerEvent('qb-police:server:send:alert:ifruit')
AddEventHandler('qb-police:server:send:alert:ifruit', function(Coords, StreetName)
   local AlertData = {title = "iFruit Store Alarm", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "A alarm system has been triggered off at "..StreetName}
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:alert:ifruit', -1, Coords, StreetName)
end)


RegisterServerEvent('qb-police:server:send:banktruck:alert')
AddEventHandler('qb-police:server:send:banktruck:alert', function(Coords, Plate, StreetName)
   local AlertData = {title = "Bank Truck Alarm", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "A bank truck alarm system has been triggered with the license plate: "..Plate..'. at '..StreetName}
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:banktruck:alert', -1, Coords, Plate, StreetName)
end)

RegisterServerEvent('qb-police:server:alert:explosion')
AddEventHandler('qb-police:server:alert:explosion', function(Coords, StreetName)
   local AlertData = {title = "Explosion Alert", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "Explosion reported nearby: "..StreetName.."."}
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:explosion:alert', -1, Coords, StreetName)
end)

RegisterServerEvent('qb-police:server:alert:cornerselling')
AddEventHandler('qb-police:server:alert:cornerselling', function(Coords, StreetName)
   local AlertData = {title = "Suspicious Activity", coords = {x = Coords.x, y = Coords.y, z = Coords.z}, description = "Er is een verdachte situatie nabij: "..StreetName.."."}
   TriggerClientEvent("qb-phone:client:addPoliceAlert", -1, AlertData)
   TriggerClientEvent('qb-police:client:send:cornerselling:alert', -1, Coords, StreetName)
end)