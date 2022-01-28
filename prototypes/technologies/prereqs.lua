data:extend{
	{
		type = "technology",
		name = "supersuit-miniaturization",
		icon = "__supersuit__/graphics/technologies/miniaturization.png",
		icon_size = 192,
		unit = {
			count = 500,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 60
		},
		prerequisites = {"modular-armor"}
	},
	{
		type = "technology",
		name = "supersuit-adv-mat",
		icon = "__supersuit__/graphics/technologies/adv_mat.png",
		icon_size = 280,
		unit = {
			count = 1500,
			ingredients = settings.startup["supersuit-require-space-science"].value and {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 5},
				{"utility-science-pack", 5},
				{"space-science-pack", 1}
				} or {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 5},
				{"utility-science-pack", 5},
			},
			time = 60
		},
		prerequisites = {"modules", "space-science-pack"}
	},
	{
		type = "technology",
		name = "supersuit-combat-predictions",
		icon = "__supersuit__/graphics/technologies/p.png",
		icon_size = 1114,
		unit = {
			count = 1000,
			ingredients = settings.startup["supersuit-require-space-science"].value and {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 10},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
				{"space-science-pack", 1}
				} or {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 10},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
			},
			time = 60
		},
		prerequisites = {"military-4"}
	},
	{
		type = "technology",
		name = "supersuit-nanotech",
		icon = "__supersuit__/graphics/technologies/nanotech.png",
		icon_size = 712,
		unit = {
			count = 1000,
			ingredients = settings.startup["supersuit-require-space-science"].value and {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 10},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
				{"space-science-pack", 1}
				} or {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 10},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
			},
			time = 60
		},
		prerequisites = {"supersuit-adv-mat", "supersuit-miniaturization"},
		effects = { { type  = "unlock-recipe", recipe = "nanofoam" } }
	},
}