data:extend{
  {
    type = "fluid",
    name = "nanofoam",
    default_temperature = 20,
    max_temperature = 100,
    heat_capacity = "0.2KJ",
    base_color = {r=0.9, g=0.9, b=0.9},
    flow_color = {r=0.7, g=0.7, b=0.7},
    icon = "__supersuit__/graphics/icons/nanofoam.png",
    icon_size = 64,
    order = "z[nanofoam]"
  },
  {
    type = "recipe",
    name = "nanofoam",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type="item", name="plastic-bar", amount=2},
      {type="item", name="coal", amount=1},
      {type="fluid", name="water", amount=10},
	  {type="fluid", name="petroleum-gas", amount=10}
    },
    results=
    {
      {type="fluid", name="nanofoam", amount=1}
    },
    subgroup = "fluid-recipes",
    crafting_machine_tint =
    {
      primary = {r = 0.9, g = 0.9, b = 0.9, a = 1.000}, -- #fff400ff
      secondary = {r = 0.9, g = 0.9, b = 0.9, a = 1.000}, -- #ffd92bff
      tertiary = {r = 0.876, g = 0.869, b = 0.597, a = 1.000}, -- #dfdd98ff
      quaternary = {r = 0.969, g = 1.000, b = 0.019, a = 1.000}, -- #f7ff04ff
    }
  },
}
