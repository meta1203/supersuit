require("controls.defense_modules")
require("controls.active_modules")
require("controls.landmines")

script.on_event(defines.events.on_entity_damaged,
	function(event)
		process_defense_modules(event)
	end
)

script.on_event(defines.events.on_player_used_capsule,
	function(event)
		if event.item.name == "slow-defense-remote" then
			process_antislow_module(event)
		end
	end
)

script.on_event(defines.events.on_entity_died,
	function(event)
		respawn_landmine(event.entity)
	end,
	{{filter="type", type="land-mine"}}
)