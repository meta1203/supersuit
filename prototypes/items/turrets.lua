data:extend{
{
	type = "equipment-grid",
	name = "modular-turret-grid",
	width = 15,
	height = 15,
	equipment_categories = {"armor"}
},
{
	type = "item-with-entity-data",
	name = "modular-turret",
	icon = "__supersuit__/graphics/icons/modular-turret.png",
	icon_size = 64,
	subgroup = "defensive-structure",
	order = "b[turret]-b[modular-turret]",
	place_result = "modular-turret",
	stack_size = 1
},
{
	type = "recipe",
	name = "modular-turret",
	enabled = true,
	energy_required = 15,
	ingredients = {
		{"spidertron", 1},
		{"assembling-machine-1", 1},
	},
	result = "modular-turret",
	requester_paste_multiplier = 1
},
{
	type = "car",
	name = "modular-turret",
	icon = "__supersuit__/graphics/icons/modular-turret.png",
	icon_size = 64,
	flags = {"placeable-neutral", "player-creation", "not-flammable"},
	equipment_grid = "modular-turret-grid",
	minable = {mining_time = 1.0, result = "modular-turret"},
	mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
	max_health = 2000,
	inventory_size = 100,
	corpse = "assembling-machine-1-remnants",
	dying_explosion = "assembling-machine-1-explosion",
	alert_icon_shift = util.by_pixel(-3, -12),
	immune_to_tree_impacts = true,
	immune_to_rock_impacts = true,
	energy_per_hit_point = 0.5,
	resistances = {
	{
		type = "fire",
		decrease = 15,
		percent = 60
	},
		{
		type = "physical",
		decrease = 15,
		percent = 60
	},
	{
		type = "impact",
		decrease = 50,
		percent = 80
	},
	{
		type = "explosion",
		decrease = 15,
		percent = 70
	},
	{
		type = "acid",
		decrease = 0,
		percent = 70
	}},
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	drawing_box = {{-1.8, -1.8}, {1.8, 1.5}},
	effectivity = 1,
	braking_power = "800kW",
	energy_source = {
		type = "electric",
		usage_priority = "primary-input",
		render_no_power_icon = true,
		render_no_network_icon = true,
		buffer_capacity = "50MJ",
		effectivity = 1,
		input_flow_limit = "50MW",
		drain = "500kW"
	},
	consumption = "0W",
	friction = 1.0,
	rotation_speed = 0,
	animation = {
		direction_count = 4,
		filename = "__supersuit__/graphics/entities/modular-turret.png",
		width = 108,
		height = 114,
	},
	weight = 1,
	
},
}