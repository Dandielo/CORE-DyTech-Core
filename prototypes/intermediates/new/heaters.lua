dytech:load 
{
    {
        name = "advanced-material-processing-2",
        type = "technology"
    } 
}

dytech:intermediate 
{
    {
        name = "heater-1",
        subgroup = "heater",
        order = "a[heater]-a",

        templates = 
        {
            { "item" },
            { 
                template = "recipe",
                productivity = true,
                energy_required = 1,

                ingredients = 
                {
                    { "pipe", 5 },
                    { "steel-plate", 5 }, -- { "steel-plate-01", 5 } -- metallurgy
                    { "electronic-circuit", 5 },
                }
            },
            {
                template = "tech-add",
                name = "advanced-material-processing-2"
            }
        }
    },
    -- {   -- Dytech machine
    --     name = "heater-2",
    --     subgroup = "heater",
    --     order = "a[heater]-b",

    --     templates = 
    --     {
    --         { "item" },
    --         { 
    --             template = "recipe",
    --             productivity = true,
    --             energy_required = 2,

    --             ingredients = 
    --             {
    --                 { "heater-1", 5 },
    --                 { "advanced-circuit", 5 },
    --                 -- { "titanium-plate", 5 } -- metallurgy
    --             }
    --         },
    --         {
    --             template = "tech-add",
    --             name = "advanced-material-processing-3"
    --         }
    --     }
    -- },
    -- {  
    --     name = "heater-3",
    --     subgroup = "heater",
    --     order = "a[heater]-c",

    --     templates = 
    --     {
    --         { "item" },
    --         { 
    --             template = "recipe",
    --             productivity = true,
    --             energy_required = 3,

    --             ingredients = 
    --             {
    --                 { "heater-2", 5 },
    --                 { "processing-unit", 5 },
    --                 -- { "cobalt-plate", 5 } -- metallurgy
    --             }
    --         },
    --         {
    --             template = "tech-add",
    --             name = "advanced-material-processing-4"
    --         }
    --     }
    -- },
    -- {  
    --     name = "heater-4",
    --     subgroup = "heater",
    --     order = "a[heater]-d",

    --     templates = 
    --     {
    --         { "item" },
    --         { 
    --             template = "recipe",
    --             productivity = true,
    --             energy_required = 4,

    --             ingredients = 
    --             {
    --                 { "heater-3", 5 },
    --                 { "advanced-processing-unit", 5 },
    --                 -- { "stainless-steel-plate", 5 } -- metallurgy
    --             }
    --         },
    --         {
    --             template = "tech-add",
    --             name = "advanced-material-processing-5"
    --         }
    --     }
    -- },
    -- {  
    --     name = "heater-5",
    --     subgroup = "heater",
    --     order = "a[heater]-e",

    --     templates = 
    --     {
    --         { "item" },
    --         { 
    --             template = "recipe",
    --             productivity = true,
    --             energy_required = 5,

    --             ingredients = 
    --             {
    --                 { "heater-4", 5 },
    --                 { "logic-diamond-processor", 5 },
    --                 -- { "stellite-alloy", 5 } -- metallurgy
    --             }
    --         },
    --         {
    --             template = "tech-add",
    --             name = "advanced-material-processing-6"
    --         }
    --     }
    -- }
}
