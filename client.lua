RegisterNetEvent("bac:setBac")
AddEventHandler('bac:setBac', function(bacLevel)
		bacData.bacLevel = bacLevel
end)

RegisterNetEvent("bac:printBac")
AddEventHandler('bac:printBac', function(tPID)
		local bacLevel = bacData.bacLevel
		TriggerServerEvent("bac:sendBac", tPID, bacLevel)
end)

RegisterNetEvent('bac:displayBac')
AddEventHandler('bac:displayBac',function(bacLevel)
	SetNotificationTextEntry("STRING")
	local text = "BAC Level:"..bacLevel
	AddTextComponentString(text)
	SetNotificationMessage("CHAR_FLOYD", "911", true, 1, "~y~Breathalyzer", "")
	DrawNotification(false, true)
end)