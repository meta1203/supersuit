log("Replicating mines... (length " .. #data.raw["land-mine"] .. ")")
-- loop through all existing landmines
local loop_through = table.deepcopy(data.raw["land-mine"])
for k,m in pairs(loop_through) do
   -- ensure that we're not using a ghostless variant, and that it can be built by players (e.g. not a Natural Evolution mine)
   if not string.find(m.name, "ghostless") and data.raw["item"][m.name] then
      -- duplicate existing mine for self-replicating variant
      local new_mine = table.deepcopy(m)
      new_mine.name = "self-replicating-" .. m.name
      new_mine.timeout = 2700
      new_mine.create_ghost_on_death = false
      new_mine.localised_name = {"", "Self-replicating ", {"entity-name." .. m.name}}
      new_mine.resistances = {
	 {
	    type = "explosion",
	    decrease = 0,
	    percent = 100
	 },
	 {
	    type = "fire",
	    decrease = 0,
	    percent = 100
	 }
      }
      -- create mine
      data:extend({new_mine})

      -- create item
      data:extend({{
	       type = "item",
	       name = new_mine.name,
	       icon = new_mine.icon,
	       icon_size = new_mine.icon_size,
	       subgroup = "gun",
	       order = "f[land-mine]-z[" .. new_mine.name .. "]",
	       place_result = new_mine.name,
	       stack_size = 10
      }})

      -- create recipe
      data:extend({{
	       type = "recipe",
	       name = new_mine.name,
	       category = "crafting-with-fluid",
	       enabled = false,
	       energy_required = 60,
	       ingredients = {
		  {type="fluid", name="nanofoam", amount=50},
		  {m.name, 10}
	       },
	       result = new_mine.name,
	       requester_paste_multiplier = 1
      }})

      -- add recipe to technology
      insert(data.raw["technology"]["supersuit-landmines"].effects, {type = "unlock-recipe", recipe = new_mine.name})
      
      log("Created " .. new_mine.name)
   end
end
