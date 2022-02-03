log("Replicating mines... (length " .. #data.raw["land-mine"] .. ")")
-- loop through all existing landmines
local loop_through = table.deepcopy(data.raw["land-mine"])
for k,m in pairs(loop_through) do
	-- ensure that we're not using a ghostless variant, and that it can be built by players (e.g. not a Natural Evolution mine)
	if not string.find(m.name, "ghostless") and data.raw["item"][m.name] then
		-- duplicate existing mine for self-replicating variant
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
		-- create mine
		data:extend({new_mine})
		
		-- create item
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
		
		-- create recipe
		data:extend({{
			type = "recipe",
			name = new_mine.name,
			category = "crafting-with-fluid",
			enabled = false,
			energy_required = 60,
			ingredients = {
				{type="fluid", name="nanofoam", amount=50},
				{m.name, 10}
			},
			result = new_mine.name,
			requester_paste_multiplier = 1
		}})
		
		-- add recipe to technology
		table.insert(data.raw["technology"]["supersuit-landmines"].effects, {type = "unlock-recipe", recipe = new_mine.name})
		
		log("Created " .. new_mine.name)
	end
end

-- aphefsdsheathecbc-rocket=Armor Piercing High Explosive Fin Stabilized Discarding Sabot High Explosive Anti Tank High Explosive Capped Ballistic Capped Rocket
data:extend(
	{
		{
			type = "projectile",
			name = "aphefsdsheathecbc-rocket",
			flags = {"not-on-map"},
			acceleration = 0.005,
			turn_speed = 0.003,
			turning_speed_increases_exponentially_with_projectile_speed = true,
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion"
						},
						{
							type = "damage",
							damage = {amount = 500, type = "explosion"}
						},
						{
							type = "damage",
							damage = {amount = 750, type = "physical"}
						},
						{
							type = "invoke-tile-trigger",
							repeat_count = 1
						},
						{
							type = "destroy-decoratives",
							from_render_layer = "decorative",
							to_render_layer = "object",
							include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
						include_decals = false,
						invoke_decorative_trigger = true,
						decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
						radius = 1.5 -- large radius for demostrative purposes
					}
				}
			}
		},
	},
	{
		type = "ammo",
		name = "aphefsdsheathecbc-rocket",
		icon = "__supersuit__/graphics/icons/APHEFSDSHEATHECBC.png",
		icon_size = 108,
		ammo_type =
		{
			category = "rocket",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "projectile",
					projectile = "aphefsdsheathecbc-rocket",
					starting_speed = 0.5,
					source_effects =
					{
						type = "create-entity",
						entity_name = "explosion-hit"
					}
				}
			}
		},
		subgroup = "ammo",
		order = "d[rocket-launcher]-b[aphefsdsheathecbc]",
		stack_size = 200
	},
	{
		type = "recipe",
		name = "aphefsdsheathecbc-rocket",
		enabled = false,
		energy_required = 15,
		ingredients = {
			{"rocket", 2},
			{"uranium-rounds-magazine", 1},
			{"uranium-cannon-shell", 2},
			{"explosives", 3},
			{"plastic-bar", 2}
		},
		result = "aphefsdsheathecbc-rocket"
	},
	{
		type = "technology",
		name = "supersuit-aphefsdsheathecbc-rocket",
		icon = "__supersuit__/graphics/technologies/APHEFSDSHEATHECBC.png",
		icon_size = 256,
		unit = {
			count = 750,
			ingredients = settings.startup["supersuit-require-space-science"].value and {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 2},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 2},
				{"space-science-pack", 1}
				} or {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 2},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 2},
			},
			time = 60
		},
		prerequisites = {"supersuit-adv-mat", "uranium-ammo"},
		effects = { { type  = "unlock-recipe", recipe = "aphefsdsheathecbc-rocket" } }
	},
})