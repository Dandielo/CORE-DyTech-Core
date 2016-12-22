require ("prototypes.machines.functions")
require "prototypes.internal-config"

data:extend(
{
  {
    type = "assembling-machine",
    name = "sawmill",
    icon = "__CORE-DyTech-Core__/graphics/machines/centrifuge-icon.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "sawmill"},
    max_health = Health.Tier2,
    corpse = "big-remnants",
    resistances = Resistances.Tier2,
    fluid_boxes =
    {
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 0} }}
      },
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, 0} }}
      },
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__CORE-DyTech-Core__/graphics/machines/centrifuge.png",
      priority = "high",
      width = 119,
      height = 99,
      frame_count = 48,
      line_length = 8,
      animation_speed = 0.64,
      shift = {0.21875, 0.05}
    },
    crafting_categories = {"sawmill"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 0.5
    },
    energy_usage = "125kW",
    ingredient_count = 15,
    module_specification =
    {
      module_slots = 5
    },
    allowed_effects = {"consumption", "speed", "pollution"}
  },
}
)

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