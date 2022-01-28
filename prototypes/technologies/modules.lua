data:extend{
	{
		type = "technology",
		name = "supersuit-foam-armor",
		icon = "__supersuit__/graphics/technologies/foam_armor.png",
		icon_size = 865,
		unit = {
			count = 500,
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
		prerequisites = {"supersuit-combat-predictions", "supersuit-nanotech"},
		effects = { { type  = "unlock-recipe", recipe = "foam-armor" } }
	},
	{
		type = "technology",
		name = "supersuit-explosive-armor",
		icon = "__supersuit__/graphics/technologies/era.png",
		icon_size = 1075,
		unit = {
			count = 750,
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
		prerequisites = {"supersuit-combat-predictions", "supersuit-adv-mat"},
		effects = { { type  = "unlock-recipe", recipe = "explosive-armor" } }
	},
	{
		type = "technology",
		name = "supersuit-slick-armor",
		icon = "__supersuit__/graphics/technologies/slick_armor.png",
		icon_size = 768,
		unit = {
			count = 500,
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
		prerequisites = {"supersuit-combat-predictions", "supersuit-nanotech"},
		effects = { { type  = "unlock-recipe", recipe = "slick-armor" } }
	},
	{
		type = "technology",
		name = "supersuit-bio-armor",
		icon = "__supersuit__/graphics/technologies/bio.png",
		icon_size = 900,
		unit = {
			count = 500,
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
		prerequisites = {"supersuit-combat-predictions", "supersuit-nanotech"},
		effects = { { type  = "unlock-recipe", recipe = "bio-armor" } }
	},
	{
		type = "technology",
		name = "supersuit-retardant-armor",
		icon = "__supersuit__/graphics/technologies/fire.png",
		icon_size = 280,
		unit = {
			count = 500,
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
		prerequisites = {"supersuit-combat-predictions", "supersuit-nanotech"},
		effects = { { type  = "unlock-recipe", recipe = "retardant-armor" } }
	},
	{
		type = "technology",
		name = "supersuit-burner-generator",
		icon = "__supersuit__/graphics/technologies/personal_boiler.png",
		icon_size = 269,
		unit = {
			count = 500,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 2},
			},
			time = 60
		},
		prerequisites = {"battery-equipment", "supersuit-miniaturization"},
		effects = { { type  = "unlock-recipe", recipe = "supersuit-burner-generator" } }
	},
	{
		type = "technology",
		name = "supersuit-nuclear-generator",
		icon = "__supersuit__/graphics/technologies/personal_reactor.png",
		icon_size = 256,
		unit = {
			count = 1000,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 5},
				{"utility-science-pack", 1},
			},
			time = 60
		},
		prerequisites = {"supersuit-miniaturization", "utility-science-pack"},
		effects = { { type  = "unlock-recipe", recipe = "supersuit-nuclear-generator" } }
	},
	{
		type = "technology",
		name = "supersuit-nuclear-generator-2",
		icon = "__supersuit__/graphics/technologies/none.png",
		icon_size = 256,
		unit = {
			count = 1000,
			ingredients = settings.startup["supersuit-require-space-science"].value and {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 10},
				{"production-science-pack", 1},
				{"utility-science-pack", 5},
				{"space-science-pack", 1}
			} or {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 10},
				{"production-science-pack", 1},
				{"utility-science-pack", 5}
			},
			time = 60
		},
		prerequisites = {"supersuit-nanotech", "supersuit-nuclear-generator"},
		effects = { { type  = "unlock-recipe", recipe = "supersuit-nuclear-generator-2" } }
	},
	{
		type = "technology",
		name = "supersuit-exoskeleton-mk2",
		icon = "__supersuit__/graphics/technologies/exoskeleton-mk2.png",
		icon_size = 256,
		unit = {
			count = 300,
			ingredients = {
				{"automation-science-pack", 2},
				{"logistic-science-pack", 2},
				{"chemical-science-pack", 1},
				{"utility-science-pack", 2},
			},
			time = 30
		},
		prerequisites = {"supersuit-miniaturization", "utility-science-pack", "exoskeleton-equipment"},
		effects = { { type  = "unlock-recipe", recipe = "supersuit-exoskeleton-mk2" } }
	},
	{
		type = "technology",
		name = "supersuit-exoskeleton-mk3",
		icon = "__supersuit__/graphics/technologies/exoskeleton-mk3.png",
		icon_size = 256,
		unit = {
			count = 750,
			ingredients = settings.startup["supersuit-require-space-science"].value and {
				{"automation-science-pack", 5},
				{"logistic-science-pack", 5},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 5},
				{"space-science-pack", 1}
			} or {
				{"automation-science-pack", 5},
				{"logistic-science-pack", 5},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 5}
			},
			time = 60
		},
		prerequisites = {"supersuit-nanotech", "supersuit-exoskeleton-mk2"},
		effects = { { type  = "unlock-recipe", recipe = "supersuit-exoskeleton-mk3" } }
	},
}