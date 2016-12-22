data:extend(
{

  {
    type = "item",
    name = "sandbag",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/sandbag.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-intermediates-raw",
    stack_size = 200,
	place_as_tile =
    {
      result = "sandbag",
      condition_size = 4,
      condition = { "water-tile" }
    },
  },
  
  {
    type = "item",
    name = "quick-sand",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/quick-sand.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-intermediates-raw",
    stack_size = 200,
	place_as_tile =
    {
      result = "quick-sand",
      condition_size = 4,
      condition = { "water-tile" }
    },
  },

})