data:extend{
  {
    type = "recipe",
    name = "slow-defense",
	category = "crafting-with-fluid",
    enabled = false,
    energy_required = 60,
    ingredients = {
	  {type="fluid", name="nanofoam", amount=100},
	  {"low-density-structure", 50},
	  {"exoskeleton-equipment", 4},
	  {"discharge-defense-equipment", 4},
	  {"processing-unit", 50},
	  {"accumulator", 10}
	},
    result = "slow-defense",
    requester_paste_multiplier = 1
  },
  {
    type = "recipe",
    name = "slow-defense-remote",
    enabled = false,
    energy_required = 1,
    ingredients = {
	  {"electronic-circuit", 1},
	  {"copper-cable", 1},
	  {"plastic-bar", 1},
	  {"discharge-defense-remote", 1}
	},
    result = "slow-defense-remote",
  },
}