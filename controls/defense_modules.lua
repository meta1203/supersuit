function debug_log(str)
	game.print(str)
	log(str)
end

function get_member_safe( table, key )
  local call_result, value = pcall( function () return table[key] end )
  if call_result then
    return value
  else
    return nil
  end
end

function access_prototype(entity, key)
	return entity.prototype[key]
end

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

-- have to do this because on_entity_damaged's final_damage_amount ignores damage done to energy shields
function calculate_vanilla_resistances(entity, damage, damage_type)
	local entity_resistances = access_prototype(entity, "resistances") or {}
	local armor_resistances = {}
	local player_armor = entity.get_inventory(defines.inventory.character_armor)
	if player_armor ~= nil and player_armor[1] ~= nil then
		-- lua is 1-index (gross)
		armor_resistances = player_armor[1].prototype.resistances
	end
	
	local flat_resistance = 0
	local percent_resistance = 0
	if armor_resistances[damage_type] ~= nil then
		flat_resistance = flat_resistance + armor_resistances[damage_type].decrease
		percent_resistance = percent_resistance + armor_resistances[damage_type].percent
	end
	if entity_resistances[damage_type] ~= nil then
		flat_resistance = flat_resistance + entity_resistances[damage_type].decrease
		percent_resistance = percent_resistance + entity_resistances[damage_type].percent
	end
	
	damage = damage - flat_resistance
	if damage < 0 then damage = 0 end
	return math.floor((damage * (1 - percent_resistance)) + 0.5)
end

function resist(grid, module_name, damage_done, power_multiplier)
	local total = grid.get_contents()[module_name] or 0
	
	-- don't run expensive code if there are no modules in the suit
	if total == 0 or damage_done == 0 then
		return 0
	end
	
	local POWER = settings.startup["supersuit-active-armor-consumption"].value * 1000 * power_multiplier
	local power_total = total * POWER
	local suit_power = grid.available_in_batteries
	
	if suit_power < power_total
	then
		total = math.floor(suit_power / POWER)
		power_total = total * POWER
	end
	remove_power_from_grid(grid, power_total)
	-- debug_log(module_name .. " has " .. total .. " in suit.")
	return damage_done * ( 1 - (0.9 ^ total))
end

function heal(entity, to_heal)
	if to_heal == 0 then
		return
	end
	
	local mh = entity.prototype.max_health -- access_prototype(entity, "max_health")
	local thealth = mh - entity.health - to_heal
	if thealth < 0 then
		entity.health = mh
		to_heal = thealth * -1
	else
		entity.health = mh - thealth
		return
	end

	
	-- game.print("healing energy shields for " .. to_heal)
	-- loop through shields and add back health
	for i,e in ipairs(entity.grid.equipment) do
		if e.type == "energy-shield-equipment" and e.max_shield - e.shield > 0 then
			-- debug_log("healing equipment module " .. i)
			local tshield = e.max_shield - e.shield - to_heal
			if tshield < 0 then
				e.shield = e.max_shield
				to_heal = tshield * -1
			else
				e.shield = e.max_shield - tshield
				break
			end
		end
	end
end

function process_defense_modules(event)
	local entity = event.entity
	
	if not entity.grid -- don't do anything if the entity doesn't have an equipment grid
	then
		return
	end
	
	local damage_type = event.damage_type.name
	game.print(damage_type)
	
	if damage_type == "physical" then
		-- debug_log("original damage done: " .. calculate_vanilla_resistances(entity, event.original_damage_amount, damage_type))
		local r = resist(entity.grid, "explosive-armor", calculate_vanilla_resistances(entity, event.original_damage_amount, damage_type), 1)
		-- debug_log("damage resisted: " .. r)
		heal(entity, r)
	elseif damage_type == "explosion" then
		-- debug_log("original damage done: " .. calculate_vanilla_resistances(entity, event.original_damage_amount, damage_type))
		local r = resist(entity.grid, "foam-armor", calculate_vanilla_resistances(entity, event.original_damage_amount, damage_type), 1)
		-- debug_log("damage resisted: " .. r)
		heal(entity, r)
	elseif damage_type == "acid" then
		-- debug_log("original damage done: " .. event.final_damage_amount)
		local r = resist(entity.grid, "slick-armor", calculate_vanilla_resistances(entity, event.original_damage_amount, damage_type), 1)
		heal(entity, r)
	elseif damage_type == "poison" then
		-- debug_log("original damage done: " .. event.final_damage_amount)
		local r = resist(entity.grid, "bio-armor", calculate_vanilla_resistances(entity, event.original_damage_amount, damage_type), 0.1)
		heal(entity, r)
	elseif damage_type == "fire" then
		-- debug_log("original damage done: " .. event.final_damage_amount)
		local r = resist(entity.grid, "retardant-armor", calculate_vanilla_resistances(entity, event.original_damage_amount, damage_type), 0.1)
		heal(entity, r)
	end
end
