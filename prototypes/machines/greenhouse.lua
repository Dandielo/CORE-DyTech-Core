require ("prototypes.machines.functions")
require "prototypes.internal-config"

data:extend(
{
  {
    type = "assembling-machine",
    name = "DT-greenhouse",
    icon = "__CORE-DyTech-Core__/graphics/machines/greenhouse.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "DT-greenhouse"},
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
      filename = "__CORE-DyTech-Core__/graphics/machines/greenhouse.png",
      priority = "high",
      width = 113,
      height = 91,
	  frame_count= 1,
      shift = {0.2, 0.15}
    },
    crafting_categories = {"greenhouse"},
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
  {
	type = "item",
	name = "DT-greenhouse",
    icon = "__CORE-DyTech-Core__/graphics/machines/greenhouse.png",
	flags = {"goes-to-quickbar"},
	subgroup = "dytech-machines-cleaning",
	order = "greenhouse",
	place_result = "DT-greenhouse",
	stack_size = 50,
  },
  {
    type = "recipe",
    name = "DT-greenhouse",
    enabled = true,
    energy_required = 10,
    ingredients =
    {
      {"frame-1", 1},
      {"electronic-circuit", 5},
      {"pipe", 2},
    },
    result= "DT-greenhouse"
  },
}
)