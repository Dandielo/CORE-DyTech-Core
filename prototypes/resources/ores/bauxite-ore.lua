data:extend({
{
  name = "bauxite-ore",
  tint = {r=0.777, g=0.7, b=0.333},
  map_color = {r=0.777, g=0.7, b=0.333},
  hardness = 1.4,
  mining_time = 2,
  enabled = false,
  icon = "__CORE-DyTech-Core__/graphics/ores/bauxite-ore.png",
  stage_mult = 10,
  item =
  {
    create = true,
    subgroup = "ores",
  },
  sprite =
  {
    sheet = 1
  },
  autoplace =
  {
    control = "bauxite-ore",
    sharpness = 1,
    richness_multiplier = 11000,
    richness_base = 200,
    size_control_multiplier = 0.06,
    peaks =
    {
      {
        influence = 0.2,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
      {
        influence = 0.65,
        noise_layer = "bauxite-ore",
        noise_octaves_difference = -2.7,
        noise_persistence = 0.4,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
    },
  },
}

})
