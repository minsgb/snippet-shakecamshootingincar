-- colocar em qualquer client.lua
------ mexer camera pra dificultar a mira de dentro do carro ----------

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local ped = PlayerPedId()
		local shot = IsPedShooting(ped)
		if shot == 1 and IsPedInAnyVehicle(ped) then
			ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.06) -- só alterar o valor se quiser maior ou menor --
		end
	end
end)
