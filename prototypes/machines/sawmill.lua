require ("prototypes.machines.functions")
require "prototypes.internal-config"


data:extend(
{
	{
	type = "item",
	name = "sawmill", 
	icon = "__CORE-DyTech-Core__/graphics/machines/centrifuge-icon.png", 
	flags = {"goes-to-main-inventory"},
	order = "seed-rubber",
	subgroup = "dytech-machines-assembling",
	stack_size = 50,
	enabled = false,
	place_result = "sawmill",
	},
	
	{
	type = "recipe",
	name = "sawmill", 
	icon = "__CORE-DyTech-Core__/graphics/machines/centrifuge-icon.png", 
	subgroup = "dytech-machines-assembling",
	energy_required = 7.5,
	enabled = false,
	ingredients = {
			{"iron-plate", 25},
			{"steel-plate", 10},
			{"iron-gear-wheel", 25},
			{"copper-cable", 10}
		},
	result = "sawmill"
	},
})

data:extend(
{
	{
    type = "technology",
    name = "sawmill",
    icon = "__CORE-DyTech-Core__/graphics/machines/centrifuge-icon.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "sawmill"
      },
	  {
        type = "unlock-recipe",
        recipe = "raw-wood-processing"
      },
    },
    prerequisites = {"automation"},
    unit = {
      count = 10,
      ingredients = 
	  {
        {"science-pack-1", 1},
      },
      time = 10
    },
    order = "c-k-f-e"
  },
})