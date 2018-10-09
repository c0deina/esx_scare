Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if IsControlJustPressed(0, 38) then
			local aiming, targetPed = GetEntityPlayerIsFreeAimingAt(PlayerId(-1))
			if aiming then
		
			local pP = GetPlayerPed(-1)
			local pCoords = GetEntityCoords(pP, true)
			local tCoords = GetEntityCoords(targetPed, true)
			local veh = GetVehiclePedIsIn(targetPed, false)
			
			-- Citizen.Trace('Aiming')
				if DoesEntityExist(targetPed) and IsEntityAPed(targetPed) then
				-- Citizen.Trace('Exists')
					if IsPedInAnyVehicle(targetPed, false) then
						-- ESX.ShowNotification("Ped jumped out the car")
						if GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, tCoords.x, tCoords.y, tCoords.z, true) < 6 then
						TaskLeaveVehicle(targetPed, veh, 4160)
						end
					end
				end
			end
		end
	end
end)
