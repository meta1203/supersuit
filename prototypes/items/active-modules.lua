data:extend(
{
	{
		type = "active-defense-equipment",
		name = "slow-defense",
		automatic = false,
		energy_source = {
			type = "electric",
			buffer_capacity = (settings.startup["supersuit-slow-defense-consumption"].value + 1) .. "MJ",
			input_flow_limit = (settings.startup["supersuit-slow-defense-consumption"].value * 33.3) .. "kW",
			usage_priority = "secondary-input"
		},
		categories = {"armor"},
		shape = {
			width = 3,
			height = 3,
			type = "full"
		},
		sprite = {
			type = "sprite",
			name = "slow-defense-sprite",
			filename = "__supersuit__/graphics/icons/slow-defense.png",
			width = 64,
			height = 64,
		},
		attack_parameters = {
			type = "projectile",
			ammo_category = "electric",
			target_type = "position",
			activation_type = "activate",
			damage_modifier = 10,
			cooldown = 60,
			projectile_center = {0, 0},
			projectile_creation_distance = 0.6,
			range = 0,
			sound = {
				filename = "__base__/sound/fight/pulse.ogg",
				volume = 0.7
			},
			ammo_type = {
				type = "projectile",
				target_type = "position",
				category = "electric",
				clamp_position = true,
				energy_consumption = settings.startup["supersuit-slow-defense-consumption"].value .. "MJ",
				action = { {
					type = "direct",
					target_type = "direction",
				} }
			}
		},
	},
	{
		type = "item",
		name = "slow-defense",
		localised_name = { "item-name.slow-defense" },
		icon = "__supersuit__/graphics/icons/slow-defense.png",
		icon_size = 64,
		placed_as_equipment_result = "slow-defense",
		subgroup = "military-equipment",
		order = "b[shield]-a[supersuit-slow-defense]",
		stack_size = 1
	},
	{
		type = "capsule",
		name = "slow-defense-remote",
		localised_name = { "item-name.slow-defense-remote" },
		capsule_action = {
			type = "use-on-self",
			uses_stack = false,
			attack_parameters = {
				type = "projectile",
				range = 0,
				cooldown = 60,
				ammo_type = {
					type = "projectile",
					target_type = "position",
					category = "electric",
				}
			}
		},
		icon = "__supersuit__/graphics/icons/slow-defense-controller.png",
		icon_size = 64,
		subgroup = "military-equipment",
		order = "b[shield]-a[supersuit-slow-defense-remote]",
		stack_size = 1
	},
})

-- upgrade the roboport mk2
-- data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].charging_energy = "1500kW"
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].charging_station_count = 5