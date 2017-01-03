dytech:intermediate
{
    {
        name = "blade-1",
        subgroup = "rotor",

        templates =
        {
            { "item" },
            {
                template = "recipe",
                enabled = true,
                productivity = true,
                energy_required = 2,

                ingredients = 
                {
                    { "stone", 4 },
                    { "wood", 1 },
                    { "iron-stick", 1 } 
                }
            }
        }
    },
    {
        name = "rotor-1",
        subgroup = "rotor",

        templates =
        {
            { "item" },
            {
                template = "recipe",
                enabled = true,
                productivity = true,
                energy_required = 5 ,

                ingredients = 
                {
                    { "blade-1", 3 },
                    { "stone-gear-wheel", 4 },
                    { "iron-plate", 8 },
                    { "copper-plate", 2 }
                }
            }
        }
    },
    -- {   -- DyTech - machine
    --     name = "blade-2",
    --     subgroup = "rotor",

    --     templates =
    --     {
    --         { "item" },
    --         {
    --             template = "recipe",
    --             productivity = true,
    --             energy_required = 4,

    --             ingredients = 
    --             {
    --                 { "iron-plate", 6 },
    --                 { "stone-brick", 6 } -- { "brick", 6 } -- metallurgy
    --             }
    --         },
    --         {
    --             template = "tech-and-add",
    --             templates = { "science-red", "science-green" },

    --             name = "rotor-2",
    --             prerequisites = { "steel-processing" }, -- + { "lead-processing", "zinc-processing" }
    --             unit = {
    --                 time = 50,
    --                 count = 75,
    --             }
    --         }
    --     }
    -- },
    -- {
    --     name = "rotor-2",
    --     subgroup = "rotor",

    --     templates =
    --     {
    --         { "item" },
    --         { "tech-add" },
    --         {
    --             template = "recipe",
    --             productivity = true,
    --             energy_required = 10,

    --             ingredients = 
    --             {
    --                 { "rotor-1", 1 },
    --                 { "blade-2", 3 },
    --                 { "steel-plate", 6 },
    --                 { "iron-gear-wheel", 4 } -- { "zinc-gear-wheel", 4 } -- metallurgy
    --             }
    --         },
    --     }
    -- },
    -- {
    --     name = "blade-3",
    --     subgroup = "rotor",

    --     templates =
    --     {
    --         { "item" },
    --         {
    --             template = "recipe",
    --             productivity = true,
    --             energy_required = 6,

    --             ingredients = 
    --             {
    --                 { "blade-2", 1 },
    --                 { "steel-plate", 4 } 
    --             }
    --         },
    --         {
    --             template = "tech-and-add",
    --             templates = { "science-red", "science-green" },

    --             name = "rotor-3",
    --             prerequisites = { "rotor-2" }, -- + { "lead-processing", "lava-smelting-03" }
    --             unit = {
    --                 time = 100,
    --                 count = 125,
    --             }
    --         }
    --     }
    -- },
    -- {
    --     name = "rotor-3",
    --     subgroup = "rotor",

    --     templates =
    --     {
    --         { "item" },
    --         { "tech-add" },
    --         {
    --             template = "recipe",
    --             productivity = true,
    --             energy_required = 15,

    --             ingredients = 
    --             {
    --                 { "rotor-2", 1 },
    --                 { "blade-3", 3 },
    --                 { "steel-plate", 12 }, -- removed -- metallurgy
    --                 { "steel-gear-wheel", 4 } -- { "brass-gear-wheel", 4 } -- metallurgy
    --             }
    --         },
    --     }
    -- },
    -- {
    --     name = "blade-4",
    --     subgroup = "rotor",

    --     templates =
    --     {
    --         { "item" },
    --         {
    --             template = "recipe",
    --             productivity = true,
    --             energy_required = 8,

    --             ingredients = 
    --             {
    --                 { "blade-3", 1 },
    --                 { "steel-plate", 4 } -- { "titanium-plate", 4 } -- metallurgy
    --             }
    --         },
    --         {
    --             template = "tech-and-add",
    --             templates = { "science-red", "science-green", "science-blue" },

    --             name = "rotor-4",
    --             prerequisites = { "rotor-3" }, -- + { "titanium-processing", "lava-smelting-06" }
    --             unit = {
    --                 time = 150,
    --                 count = 200,
    --             }
    --         }
    --     }
    -- },
    -- {
    --     name = "rotor-4",
    --     subgroup = "rotor",

    --     templates =
    --     {
    --         { "item" },
    --         { "tech-add" },
    --         {
    --             template = "recipe",
    --             productivity = true,
    --             energy_required = 20,

    --             ingredients = 
    --             {
    --                 { "rotor-3", 1 },
    --                 { "blade-4", 3 },
    --                 { "steel-gear-wheel", 12 } -- { "copper-tungsten-gear-wheel", 12 } -- metallurgy
    --             }
    --         },
    --     }
    -- },
    -- {
    --     name = "blade-5",
    --     subgroup = "rotor",

    --     templates =
    --     {
    --         { "item" },
    --         {
    --             template = "recipe",
    --             productivity = true,
    --             energy_required = 10,

    --             ingredients = 
    --             {
    --                 { "blade-4", 1 },
    --                 { "steel-plate", 4 } -- { "stainless-steel-plate", 4 } -- metallurgy
    --             }
    --         },
    --         {
    --             template = "tech-and-add",
    --             templates = { "science-red", "science-green", "science-blue" },

    --             name = "rotor-5",
    --             prerequisites = { "rotor-4" }, -- + { "lava-smelting-06", stainless steel? }
    --             unit = {
    --                 time = 150, -- ? same
    --                 count = 200, -- ? same
    --             }
    --         }
    --     }
    -- },
    -- {
    --     name = "rotor-5",
    --     subgroup = "rotor",

    --     templates =
    --     {
    --         { "item" },
    --         { "tech-add" },
    --         {
    --             template = "recipe",
    --             productivity = true,
    --             energy_required = 25,

    --             ingredients = 
    --             {
    --                 { "rotor-4", 1 },
    --                 { "blade-5", 3 },
    --                 { "steel-gear-wheel", 12 } -- { "stellite-gear-wheel", 12 } -- metallurgy
    --             }
    --         },
    --     }
    -- }
}
