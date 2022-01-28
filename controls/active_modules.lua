function remove_power_from_grid(grid, joules)
	local to_remove = joules
	local equipment = grid.equipment
	-- cycle through each battery, removing energy until the energy requirement is met
	for _, e in ipairs(equipment)
	do
		if e.type and e.type == "battery-equipment"
		then
			local tenergy = e.energy - to_remove
			if tenergy < 0 
			then
				e.energy = 0
				to_remove = tenergy * -1
			else
				e.energy = tenergy
				break
			end
		end
	end
end

function process_antislow_module(event)
	local player = game.players[event.player_index]
	if not player.character or not player.character.grid then return end
	local grid = player.character.grid
	if not grid.get_contents()["slow-defense"] then return end
	for _,e in ipairs(grid.equipment) do
		if e.name == "slow-defense" then
			-- check if module has enough power
			if e.energy >= settings.startup["supersuit-slow-defense-consumption"].value * 1000000 then
				-- remove energy from module
				e.energy = e.energy - settings.startup["supersuit-slow-defense-consumption"].value * 1000000
				-- spark effect
				player.character.surface.create_entity{name = "spark-explosion-higher", position = player.character.position}
				-- don't bother if the player doesn't have any stickers
				if not player.character.stickers then return end
				-- remove all stickers
				for _,s in ipairs(player.character.stickers) do
					-- debug
					-- player.print("Destroyed sticker " .. s.name .. ": " .. tostring(s.destroy()))
					if not s.destroy() then
						player.print("Failed to destroy " .. s.name)
					end
				end
				return
			end
		end
	end
	player.print("Not enough power in modules")
end
