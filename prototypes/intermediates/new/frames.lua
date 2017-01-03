dytech:intermediate
{
    {
        name = "frame-1",
        subgroup = "machine",

        templates = 
        {
            { "item" },
            { 
                template = "recipe",

                enabled = true,
                productivity = true,
                energy_required = 5,

                ingredients = {
                    { "iron-stick", 15 },
                    { "wood", 20 }
                }
            }
        }
    },
    {
        name = "frame-2",
        subgroup = "machine",

        templates = 
        {
            { "item" },
            { "tech-add" },
            { 
                template = "recipe",

                productivity = true,
                energy_required = 10,

                ingredients = {
                    { "frame-1", 2 },
                    { "electronic-circuit", 15 },
                    { "iron-plate", 10 }, -- { "zinc-plate", 10 } -- metallurgy
                }
            },
            {
                template = "tech",
                templates = { "science-red", "science-green" },
                prerequisites = { "steel-processing" }, -- + { "zinc-processing" } -- metallurgy
                unit = {
                    time = 100,
                    count = 75,
                }
            }
        }
    },
    { 
        name = "frame-3",
        subgroup = "machine",

        templates = 
        {
            { "item" },
            { "tech-add" },
            { 
                template = "recipe",

                productivity = true,
                energy_required = 15,

                ingredients = {
                    { "frame-2", 2 },
                    { "advanced-circuit", 18 }, -- { "advanced-circuit", 15 } -- metallurgy
                    { "steel-plate", 25 }, -- { "titanium-plate", 10 } -- metallurgy
                    { "copper-cable", 20 } -- removed -- metallurgy
                }
            },
            {
                template = "tech",
                templates = { "science-red", "science-green", "science-blue" },
                prerequisites = { "frame-2" }, -- + { "titanium-processing", "lava-smelting-05" } -- metallurgy
                unit = {
                    time = 100,
                    count = 125,
                }
            }
        }
    },
    -- { -- DyTech - Machine
    --  name = "frame-4",
    --  subgroup = "machine",

    --  templates = 
    --  {
    --      { "item" },
    --      { 
    --          template = "recipe",

    --          productivity = true,
    --          energy_required = 20,

    --          ingredients = {
    --              { "frame-3", 2 },
    --              { "processing-unit", 10 }, -- { "processing-unit", 15 } -- metallurgy
    --              { "steel-plate", 25 }, -- { "cobalt-plate", 10 } -- metallurgy
    --              { "bundled-wire", 25 } -- removed -- metallurgy
    --          }
    --      },
    --      {
    --          template = "tech",
    --          templates = { "science-red", "science-green", "science-blue" },
    --          prerequisites = { "frame-3" }, -- + { "cobalt-processing", "lava-smelting-05" } -- metallurgy
    --          unit = {
    --              time = 150,
    --              count = 250,
    --          }
    --      }
    --  }
    -- },
    -- {
    --  name = "frame-5",
    --  subgroup = "machine",

    --  templates = 
    --  {
    --      { "item" },
    --      { 
    --          template = "recipe",

    --          productivity = true,
    --          energy_required = 25,

    --          ingredients = {
    --              { "frame-4", 2 },
    --              { "advanced-processing-unit", 10 }, -- { "advanced-processing-unit", 15 } -- metallurgy
    --              { "steel-plate", 25 }, -- { "stellite-alloy", 10 } -- metallurgy
    --              { "bundled-wire", 50 } -- removed -- metallurgy
    --          }
    --      },
    --      {
    --          template = "tech",
    --          templates = { "science-red", "science-green", "science-blue" },
    --          prerequisites = { "frame-4" }, -- + { "lava-smelting-06" } -- metallurgy
    --          unit = {
    --              time = 150,
    --              count = 375,
    --          }
    --      }
    --  }
    -- }
}
