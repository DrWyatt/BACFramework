RegisterServerEvent("bac:sendBac")
AddEventHandler('bac:sendBac', function(tPID, bacLevel)
	TriggerClientEvent('bac:displayBac', tPID, bacLevel)
end)

RegisterServerEvent("bac:outsideBac")
AddEventHandler('bac:outsideBac', function(tPID, source)		
	TriggerClientEvent("bac:printBac", tPID, source)
end)

RegisterServerEvent("bac:outsideSetBac")
AddEventHandler('bac:outsideSetBac', function(tPID, bacLevel)		
	TriggerClientEvent("bac:setBac", tPID, bacLevel)
end)