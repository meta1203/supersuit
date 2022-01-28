data:extend{
	{
		type = "technology",
		name = "supersuit-slow-defense",
		icon = "__supersuit__/graphics/technologies/slow-defense.png",
		icon_size = 90,
		unit = {
			count = 1000,
			ingredients = settings.startup["supersuit-require-space-science"].value and {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 10},
				{"chemical-science-pack", 1},
				{"production-science-pack", 5},
				{"utility-science-pack", 5},
				{"space-science-pack", 1}
			} or {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 10},
				{"chemical-science-pack", 1},
				{"production-science-pack", 5},
				{"utility-science-pack", 5},
			},
			time = 60
		},
		prerequisites = {"supersuit-combat-predictions", "supersuit-nanotech", "discharge-defense-equipment"},
		effects = { 
			{ type  = "unlock-recipe", recipe = "slow-defense" },
			{ type  = "unlock-recipe", recipe = "slow-defense-remote" }
		}
	},
}