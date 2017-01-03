dytech:intermediate
{
    {
        name = "gearbox-1",
        subgroup = "gearbox",

        templates =
        {
            { "item" },
            { 
                template = "recipe",

                enabled = true,
                productivity = true,
                energy_required = 1,
                ingredients = 
                {
                    { "iron-plate", 5 },
                    { "stone-gear-wheel", 5 }
                }
            }
        }
    },
    {
        name = "gearbox-2",
        subgroup = "gearbox",

        templates =
        {
            { "item" },
            { "tech-add" },
            { 
                template = "recipe",

                productivity = true,
                energy_required = 2,
                ingredients = 
                {
                    { "gearbox-1", 5 },
                    { "iron-gear-wheel", 5 } -- { "steel-gear-wheel", 5 } -- metallurgy
                }
            },
            {
                template = "tech",
                templates = { "science-red", "science-green" },
                prerequisites = { "automation-2" },
                unit = {
                    time = 100,
                    count = 75
                }
            }
        }
    },
    -- {
    --     name = "gearbox-3",
    --     subgroup = "gearbox",

    --     templates =
    --     {
    --         { "item" },
    --         { "tech-add" },
    --         { 
    --             template = "recipe",

    --             productivity = true,
    --             energy_required = 3,
    --             ingredients = 
    --             {
    --                 { "gearbox-2", 5 },
    --                 { "steel-gear-wheel", 5 } -- { "brass-gear-wheel", 5 } -- metallurgy
    --             }
    --         },
    --         {
    --             template = "tech",
    --             templates = { "science-red", "science-green", "science-blue" },
    --             prerequisites = { "gearbox-2" },
    --             unit = {
    --                 time = 100,
    --                 count = 125
    --             }
    --         }
    --     }
    -- },
    -- {
    --     name = "gearbox-4",
    --     subgroup = "gearbox",

    --     templates =
    --     {
    --         { "item" },
    --         { "tech-add" },
    --         { 
    --             template = "recipe",

    --             productivity = true,
    --             energy_required = 4,
    --             ingredients = 
    --             {
    --                 { "gearbox-3", 5 },
    --                 { "steel-gear-wheel", 5 } -- { "copper-tungsten-gear-wheel", 5 } -- metallurgy
    --             }
    --         },
    --         {
    --             template = "tech",
    --             templates = { "science-red", "science-green", "science-blue" },
    --             prerequisites = { "gearbox-3" },
    --             unit = {
    --                 time = 150,
    --                 count = 250
    --             }
    --         }
    --     }
    -- },
    -- {
    --     name = "gearbox-5",
    --     subgroup = "gearbox",

    --     templates =
    --     {
    --         { "item" },
    --         { "tech-add" },
    --         { 
    --             template = "recipe",

    --             productivity = true,
    --             energy_required = 5,
    --             ingredients = 
    --             {
    --                 { "gearbox-4", 5 },
    --                 { "steel-gear-wheel", 5 } -- { "stellite-gear-wheel", 5 } -- metallurgy
    --             }
    --         },
    --         {
    --             template = "tech",
    --             templates = { "science-red", "science-green", "science-blue" },
    --             prerequisites = { "gearbox-4" },
    --             unit = {
    --                 time = 150,
    --                 count = 500
    --             }
    --         }
    --     }
    -- }
}
