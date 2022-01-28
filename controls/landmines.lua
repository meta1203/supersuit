local prefix = "self-replicating-"

function respawn_landmine(entity)
	if string.sub(entity.name, 1, #prefix) == prefix then
		-- debug
		-- game.print("duplicating " .. entity.name .. " at (" .. entity.position.x .. "," .. entity.position.y .. ")")
		local new_entity = entity.surface.create_entity{name = entity.name, position = entity.position, force = entity.force}
		-- kinda cheesy, but idk
		new_entity.destructible = false
	end
end