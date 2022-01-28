data:extend{
	{
		type = "recipe",
		name = "explosive-armor",
		category = "advanced-crafting",
		enabled = false,
		energy_required = 60,
		ingredients = {
			{"explosives", 50},
			{"low-density-structure", 50},
			{"steel-plate", 25},
			{"copper-plate", 50},
			{"processing-unit", 50}
		},
		result = "explosive-armor",
		requester_paste_multiplier = 1
	},
	{
		type = "recipe",
		name = "foam-armor",
		category = "crafting-with-fluid",
		enabled = false,
		energy_required = 60,
		ingredients = {
			{type="fluid", name="nanofoam", amount=100},
			{"low-density-structure", 50},
			{"steel-plate", 25},
			{"copper-plate", 50},
			{"processing-unit", 50}
		},
		result = "foam-armor",
		requester_paste_multiplier = 1
	},
	{
		type = "recipe",
		name = "slick-armor",
		category = "crafting-with-fluid",
		enabled = false,
		energy_required = 60,
		ingredients = {
			{"plastic-bar", 50},
			{"low-density-structure", 50},
			{type="fluid", name="lubricant", amount=100},
			{"steel-plate", 50},
			{"processing-unit", 50}
		},
		result = "slick-armor",
		requester_paste_multiplier = 1
	},
	{
		type = "recipe",
		name = "bio-armor",
		category = "advanced-crafting",
		enabled = false,
		energy_required = 60,
		ingredients = {
			{"electric-engine-unit", 50},
			{"low-density-structure", 50},
			{"coal", 100},
			{"processing-unit", 50}
		},
		result = "bio-armor",
		requester_paste_multiplier = 1
	},
	{
		type = "recipe",
		name = "retardant-armor",
		category = "crafting-with-fluid",
		enabled = false,
		energy_required = 60,
		ingredients = {
			{"plastic-bar", 50},
			{"low-density-structure", 50},
			{type="fluid", name="nanofoam", amount=100},
			{"processing-unit", 50}
		},
		result = "retardant-armor",
		requester_paste_multiplier = 1
	},
	{
		type = "recipe",
		name = "supersuit-burner-generator",
		category = "advanced-crafting",
		enabled = false,
		energy_required = 30,
		ingredients = {
			{"water-barrel", 10},
			{"boiler", 1},
			{"steam-engine", 2},
			{"advanced-circuit", 50},
			{"battery-equipment", 2}
		},
		result = "retardant-armor",
		requester_paste_multiplier = 1
	},
	{
		type = "recipe",
		name = "supersuit-burner-generator",
		category = "advanced-crafting",
		enabled = false,
		energy_required = 30,
		ingredients = {
			{"water-barrel", 10},
			{"boiler", 1},
			{"steam-engine", 2},
			{"advanced-circuit", 50}
		},
		result = "supersuit-burner-generator",
		requester_paste_multiplier = 1
	},
	{
		type = "recipe",
		name = "supersuit-nuclear-generator",
		category = "advanced-crafting",
		enabled = false,
		energy_required = 120,
		ingredients = {
			{"nuclear-reactor", 1},
			{"heat-exchanger", 4},
			{"heat-pipe", 50},
			{"water-barrel", 100},
			{"processing-unit", 500},
			{"low-density-structure", 150},
		},
		result = "supersuit-nuclear-generator",
		requester_paste_multiplier = 1
	},
	{
		type = "recipe",
		name = "supersuit-nuclear-generator-2",
		category = "crafting-with-fluid",
		enabled = false,
		energy_required = 120,
		ingredients = {
			{"supersuit-nuclear-generator", 5},
			{"heat-pipe", 100},
			{type="fluid", name="nanofoam", amount=500},
			{"processing-unit", 500},
		},
		result = "supersuit-nuclear-generator-2",
		requester_paste_multiplier = 1
	},
	{
		type = "recipe",
		name = "supersuit-exoskeleton-mk2",
		category = "advanced-crafting",
		enabled = false,
		energy_required = 30,
		ingredients = {
			{"exoskeleton-equipment", 5},
			{"low-density-structure", 25},
			{"electric-engine-unit", 25},
			{"processing-unit", 100},
		},
		result = "supersuit-exoskeleton-mk2",
		requester_paste_multiplier = 1
	},
	{
		type = "recipe",
		name = "supersuit-exoskeleton-mk3",
		category = "crafting-with-fluid",
		enabled = false,
		energy_required = 60,
		ingredients = {
			{"supersuit-exoskeleton-mk2", 5},
			{type="fluid", name="nanofoam", amount=150},
			{"electric-engine-unit", 50},
			{"processing-unit", 250},
		},
		result = "supersuit-exoskeleton-mk3",
		requester_paste_multiplier = 1
	},
}