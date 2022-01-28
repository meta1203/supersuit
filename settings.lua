data:extend({
	{
		type = "int-setting",
		name = "supersuit-active-armor-consumption",
		setting_type = "startup",
		default_value = 1000,
		minimum_value = 1,
	},
	{
		type = "int-setting",
		name = "supersuit-slow-defense-consumption",
		setting_type = "startup",
		default_value = 50,
		minimum_value = 1,
	},
	{
		type = "int-setting",
		name = "supersuit-generator-production",
		setting_type = "startup",
		default_value = 2000,
		minimum_value = 1,
		maximum_value = 25000
	},
	{
		type = "bool-setting",
		name = "supersuit-require-space-science",
		setting_type = "startup",
		default_value = false
	},
})