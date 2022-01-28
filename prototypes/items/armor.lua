data:extend{
  {
    type = "equipment-grid",
    name = "op-grid",
    width = settings.startup["supersuit-grid-size"].value,
    height = settings.startup["supersuit-grid-size"].value,
    equipment_categories = {"armor"}
  },
  {
    type = "armor",
    name = "supersuit-armor",
    icon = "__supersuit__/graphics/icons/supersuit-armor.png",
    icon_size = 64,
    resistances =
    {
      {
        type = "physical",
        decrease = 30,
        percent = 60
      },
      {
        type = "acid",
        decrease = 30,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 60
      },
      {
        type = "fire",
        decrease = 0,
        percent = 100
      }
    },
    infinite = true,
    subgroup = "armor",
    order = "g[supersuit]",
    stack_size = 1,
    equipment_grid = "op-grid",
    inventory_size_bonus = 200
  },
}
