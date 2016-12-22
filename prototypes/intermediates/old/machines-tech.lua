data:extend(
{ 
  {
    type = "technology",
    name = "frame-1",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/frame1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "frame-2"
      },
    },
    prerequisites = {"steel-processing", "advanced-electronics"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 100
    },
    order = "frame-1",
  },
  {
    type = "technology",
    name = "frame-2",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/frame1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "frame-3"
      },
    },
    prerequisites = {"frame-1"},
    unit =
    {
      count = 125,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 100
    },
    order = "frame-2",
	upgrade = true
  },
  {
    type = "technology",
    name = "frame-3",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/frame1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "frame-4"
      },
    },
    prerequisites = {"frame-2", "advanced-processing-unit"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 150
    },
    order = "frame-3",
	upgrade = true
  },
  {
    type = "technology",
    name = "item-exit-1",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/item-exit1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "item-exit-2"
      },
    },
    prerequisites = {"steel-processing"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 50
    },
    order = "item-exit-1",
  },
  {
    type = "technology",
    name = "item-exit-2",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/item-exit1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "item-exit-3"
      },
    },
    prerequisites = {"item-exit-1", "advanced-cables"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 100
    },
    order = "item-exit-2",
	upgrade = true
  },
  {
    type = "technology",
    name = "item-exit-3",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/item-exit1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "item-exit-4"
      },
    },
    prerequisites = {"item-exit-2", "advanced-processing-unit", "advanced-electronics"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 150
    },
    order = "item-exit-3",
	upgrade = true
  },
  {
    type = "technology",
    name = "rotor-1",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/rotor1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rotor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "blade-2"
      },
    },
    prerequisites = {"steel-processing", "automation"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 50
    },
    order = "rotor-1",
  },
  {
    type = "technology",
    name = "rotor-2",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/rotor1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rotor-3"
      },
      {
        type = "unlock-recipe",
        recipe = "blade-3"
      },
    },
    prerequisites = {"rotor-1"},
    unit =
    {
      count = 125,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 100
    },
    order = "rotor-2",
	upgrade = true
  },
  {
    type = "technology",
    name = "rotor-3",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/rotor1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rotor-4"
      },
    },
    prerequisites = {"rotor-2", "advanced-electronics"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 150
    },
    order = "rotor-3",
	upgrade = true
  },{
    type = "technology",
    name = "advanced-cables",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/bundled-wire.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bundled-wire"
      },
    },
    prerequisites = {"advanced-electronics"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 100
    },
    order = "advanced-cables",
  },
  {
    type = "technology",
    name = "advanced-processing-unit",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/advanced-processing-unit.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-processing-unit"
      },
    },
    prerequisites = {"advanced-cables"},
    unit =
    {
      count = 475,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 200
    },
    order = "advanced-processing-unit",
  },
  
}
)