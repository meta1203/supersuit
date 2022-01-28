data:extend(
	{
		{
			type = "energy-shield-equipment",
			name = "explosive-armor",
			energy_per_shield = "1J",
			max_shield_value = 0,
			energy_source = {
				type = "electric",
				buffer_capacity = "1J",
				input_flow_limit = "1W",
				usage_priority = "primary-input"
			},
			energy_input = "1W",
			categories = {"armor"},
			shape = {
				width = 3,
				height = 2,
				type = "full"
			},
			sprite = {
				type = "sprite",
				name = "explosive-armor-sprite",
				filename = "__supersuit__/graphics/modules/era.png",
				width = 1075,
				height = 542,
			},
		},
		{
			type = "item",
			name = "explosive-armor",
			localised_name = { "item-name.explosive-armor" },
			icon = "__supersuit__/graphics/icons/era.png",
			icon_size = 1075,
			placed_as_equipment_result = "explosive-armor",
			subgroup = "military-equipment",
			order = "b[shield]-a[supersuit-explosive-armor]",
			stack_size = 5
		},
		{
			type = "energy-shield-equipment",
			name = "foam-armor",
			energy_per_shield = "1J",
			max_shield_value = 0,
			energy_source = {
				type = "electric",
				buffer_capacity = "1J",
				input_flow_limit = "1W",
				usage_priority = "primary-input"
			},
			energy_input = "1W",
			categories = {"armor"},
			shape = {
				width = 3,
				height = 2,
				type = "full"
			},
			sprite = {
				type = "sprite",
				name = "foam-armor-sprite",
				filename = "__supersuit__/graphics/modules/foam_armor.png",
				width = 865,
				height = 499,
			},
		},
		{
			type = "item",
			name = "foam-armor",
			localised_name = { "item-name.foam-armor" },
			icon = "__supersuit__/graphics/icons/foam_armor.png",
			icon_size = 865,
			placed_as_equipment_result = "foam-armor",
			subgroup = "military-equipment",
			order = "b[shield]-a[supersuit-foam-armor]",
			stack_size = 5
		},
		{
			type = "energy-shield-equipment",
			name = "slick-armor",
			energy_per_shield = "1J",
			max_shield_value = 0,
			energy_source = {
				type = "electric",
				buffer_capacity = "1J",
				input_flow_limit = "1W",
				usage_priority = "primary-input"
			},
			energy_input = "1W",
			categories = {"armor"},
			shape = {
				width = 3,
				height = 2,
				type = "full"
			},
			sprite = {
				type = "sprite",
				name = "slick-armor-sprite",
				filename = "__supersuit__/graphics/modules/slick_armor.png",
				width = 1535,
				height = 693,
			},
		},
		{
			type = "item",
			name = "slick-armor",
			localised_name = { "item-name.slick-armor" },
			icon = "__supersuit__/graphics/icons/slick_armor.png",
			icon_size = 768,
			placed_as_equipment_result = "slick-armor",
			subgroup = "military-equipment",
			order = "b[shield]-a[supersuit-slick-armor]",
			stack_size = 5
		},
		{
			type = "energy-shield-equipment",
			name = "bio-armor",
			energy_per_shield = "1J",
			max_shield_value = 0,
			energy_source = {
				type = "electric",
				buffer_capacity = "1J",
				input_flow_limit = "1W",
				usage_priority = "primary-input"
			},
			energy_input = "1W",
			categories = {"armor"},
			shape = {
				width = 3,
				height = 3,
				type = "full"
			},
			sprite = {
				type = "sprite",
				name = "bio-armor-sprite",
				filename = "__supersuit__/graphics/modules/bio.png",
				width = 900,
				height = 900,
			},
		},
		{
			type = "item",
			name = "bio-armor",
			icon = "__supersuit__/graphics/icons/bio.png",
			icon_size = 900,
			placed_as_equipment_result = "bio-armor",
			subgroup = "military-equipment",
			order = "b[shield]-a[supersuit-bio-armor]",
			stack_size = 5
		},
		{
			type = "energy-shield-equipment",
			name = "retardant-armor",
			energy_per_shield = "1J",
			max_shield_value = 0,
			energy_source = {
				type = "electric",
				buffer_capacity = "1J",
				input_flow_limit = "1W",
				usage_priority = "primary-input"
			},
			energy_input = "1W",
			categories = {"armor"},
			shape = {
				width = 2,
				height = 3,
				type = "full"
			},
			sprite = {
				type = "sprite",
				name = "retardant-armor-sprite",
				filename = "__supersuit__/graphics/modules/fire.png",
				width = 280,
				height = 280,
			},
		},
		{
			type = "item",
			name = "retardant-armor",
			localised_name = { "item-name.retardant-armor" },
			icon = "__supersuit__/graphics/icons/fire.png",
			icon_size = 280,
			placed_as_equipment_result = "retardant-armor",
			subgroup = "military-equipment",
			order = "b[shield]-a[supersuit-retardant-armor]",
			stack_size = 5
		},
		{
			type = "generator-equipment",
			name = "supersuit-nuclear-generator",
			icon = "__supersuit__/graphics/icons/personal-nuclear-reactor.png",
			sprite = {
				type = "sprite",
				name = "personal-nuclear-reactor-sprite",
				filename = "__supersuit__/graphics/modules/personal-nuclear-reactor.png",
				width = 302,
				height = 318,
			},
			order = "a[energy-source]-b[nuclear-reactora]",
			power = (settings.startup["supersuit-generator-production"].value * 4) .. "kW",
			categories = {"armor"},
			burner = {
				type = "burner",
				fuel_category = "nuclear",
				effectivity = 1,
				fuel_inventory_size = 1,
				burnt_inventory_size = 1,
				emissions_per_minute = 0,
			},
			energy_source = {
				type = "electric",
				usage_priority = "secondary-output"
			},
			shape = {
				width = 4,
				height = 4,
				type = "full"
			},
		},
		{
			type = "item",
			name = "supersuit-nuclear-generator",
			icon = "__supersuit__/graphics/icons/personal-nuclear-reactor.png",
			icon_size = 64,
			placed_as_equipment_result = "supersuit-nuclear-generator",
			subgroup = "equipment",
			order = "a[energy-source]-b[nuclear-reactora]",
			stack_size = 1
		},
		{
			type = "generator-equipment",
			name = "supersuit-nuclear-generator-2",
			icon = "__supersuit__/graphics/icons/personal-nuclear-reactor-2.png",
			sprite = {
				type = "sprite",
				name = "personal-nuclear-reactor-2-sprite",
				filename = "__supersuit__/graphics/modules/personal-nuclear-reactor-2.png",
				width = 302,
				height = 318,
			},
			order = "a[energy-source]-b[nuclear-reactorb]",
			power = (settings.startup["supersuit-generator-production"].value * 8) .. "kW",
			categories = {"armor"},
			burner = {
				type = "burner",
				fuel_category = "nuclear",
				effectivity = 2,
				fuel_inventory_size = 2,
				burnt_inventory_size = 2,
				emissions_per_minute = 0,
			},
			energy_source = {
				type = "electric",
				usage_priority = "secondary-output"
			},
			shape = {
				width = 6,
				height = 6,
				type = "full"
			},
		},
		{
			type = "item",
			name = "supersuit-nuclear-generator-2",
			icon = "__supersuit__/graphics/icons/personal-nuclear-reactor-2.png",
			icon_size = 64,
			placed_as_equipment_result = "supersuit-nuclear-generator-2",
			subgroup = "equipment",
			order = "a[energy-source]-b[nuclear-reactorb]",
			stack_size = 1
		},
		{
            type = "generator-equipment",
			name = "supersuit-burner-generator",
            icon = "__supersuit__/graphics/icons/personal-burner.png",
            picture = "__supersuit__/graphics/modules/personal-burner.png",
			sprite = {
				type = "sprite",
				name = "personal-burner-sprite",
				filename = "__supersuit__/graphics/modules/personal-burner.png",
				width = 150,
				height = 150,
			},
            order = "a[energy-source]-b[burner-generator]",
            power = settings.startup["supersuit-generator-production"].value .. "kW",
            burner = {
				type = "burner",
				fuel_category = "chemical",
				effectivity = 0.5,
				fuel_inventory_size = 3,
				emissions_per_minute = 15,
				smoke = {
					{
						name = "smoke",
						north_position = {0,-1.5},
						south_position = {0,-1.5},
						east_position = {0,-1.5},
						west_position = {0,-1.5},
						frequency = 15,
						starting_vertical_speed = 0.0,
						starting_frame_deviation = 60
					}
				}
			},
			energy_source = {
				type = "electric",
				usage_priority = "secondary-output"
			},
            shape = {
                width = 2,
                height = 2,
                type = "full"
			},
            categories = {"armor"}
		},
		{
			type = "item",
			name = "supersuit-burner-generator",
			icon = "__supersuit__/graphics/icons/personal-burner.png",
			icon_size = 150,
			placed_as_equipment_result = "supersuit-burner-generator",
			subgroup = "equipment",
			order = "a[energy-source]-b[burner-generator]",
			stack_size = 4
		},
		{
			type = "movement-bonus-equipment",
			name = "supersuit-exoskeleton-mk2",
			energy_consumption = "500kW",
			movement_bonus = 0.6,
			sprite = {
				type = "sprite",
				name = "supersuit-exoskeleton-mk2-sprite",
				filename = "__supersuit__/graphics/modules/exoskeleton-mk2.png",
				width = 128,
				height = 256,
			},
			shape = {
				width = 2,
				height = 4,
				type = "full"
			},
			energy_source = {
				type = "electric",
				usage_priority = "secondary-input"
			},
			categories = {"armor"}
		},
		{
			type = "item",
			name = "supersuit-exoskeleton-mk2",
			icon = "__supersuit__/graphics/icons/exoskeleton-mk2.png",
			icon_size = 64,
			placed_as_equipment_result = "supersuit-exoskeleton-mk2",
			subgroup = "equipment",
			order = "d[exoskeleton]-a[exoskeleton-mk2]",
			stack_size = 10
		},
		{
			type = "movement-bonus-equipment",
			name = "supersuit-exoskeleton-mk3",
			energy_consumption = "1200kW",
			movement_bonus = 1.2,
			sprite = {
				type = "sprite",
				name = "supersuit-exoskeleton-mk3-sprite",
				filename = "__supersuit__/graphics/modules/exoskeleton-mk3.png",
				width = 128,
				height = 256,
			},
			shape = {
				width = 2,
				height = 4,
				type = "full"
			},
			energy_source = {
				type = "electric",
				usage_priority = "secondary-input"
			},
			categories = {"armor"}
		},
		{
			type = "item",
			name = "supersuit-exoskeleton-mk3",
			icon = "__supersuit__/graphics/icons/exoskeleton-mk3.png",
			icon_size = 64,
			placed_as_equipment_result = "supersuit-exoskeleton-mk3",
			subgroup = "equipment",
			order = "d[exoskeleton]-a[exoskeleton-mk3]",
			stack_size = 5
		},
})			
