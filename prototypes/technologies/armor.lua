data:extend{
	{
		type = "technology",
		name = "supersuit-armor",
		icon = "__supersuit__/graphics/icons/supersuit-armor.png",
		icon_size = 64,
		unit = {
			count = 1000,
			ingredients = settings.startup["supersuit-require-space-science"].value and {
				{"automation-science-pack", 10},
				{"logistic-science-pack", 10},
				{"military-science-pack", 100},
				{"chemical-science-pack", 10},
				{"production-science-pack", 10},
				{"utility-science-pack", 10},
				{"space-science-pack", 1}
			} or {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 10},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
			},
			time = settings.startup["supersuit-require-space-science"].value and 120 or 12
		},
		prerequisites = {"supersuit-combat-predictions", "supersuit-nanotech"},
		effects = { { type  = "unlock-recipe", recipe = "supersuit-armor" } }
	},
}