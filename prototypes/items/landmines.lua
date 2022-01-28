log("Replicating mines... (length " .. #data.raw["land-mine"] .. ")")
local loop_through = table.deepcopy(data.raw["land-mine"])
for k,m in pairs(loop_through) do
	if not string.find(m.name, "ghostless") and data.raw["item"][m.name] then
	local new_mine = table.deepcopy(m)
	new_mine.name = "self-replicating-" .. m.name
	new_mine.timeout = 2700
	new_mine.create_ghost_on_death = false
	new_mine.localised_name = {"", "Self-replicating ", {"entity-name." .. m.name}}
	new_mine.resistances = {
		{
			type = "explosion",
			decrease = 0,
			percent = 100
		},
		{
			type = "fire",
			decrease = 0,
			percent = 100
		}
	}
	data:extend({new_mine})
	
	data:extend({{
		type = "item",
		name = new_mine.name,
		icon = new_mine.icon,
		icon_size = new_mine.icon_size,
		subgroup = "gun",
		order = "f[land-mine]-z[" .. new_mine.name .. "]",
		place_result = new_mine.name,
		stack_size = 10
	}})
	
	data:extend({{
		type = "recipe",
		name = new_mine.name,
		category = "crafting-with-fluid",
		enabled = true,
		energy_required = 60,
		ingredients = {
			{type="fluid", name="nanofoam", amount=50},
			{m.name, 10}
		},
		result = new_mine.name,
		requester_paste_multiplier = 1
	}})
	
	log("Created " .. new_mine.name)
	end
end