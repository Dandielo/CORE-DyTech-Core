dytech:load
{   -- load the given technology to add recipes to it
    {
        name = "steel-processing",
        type = "technology"
    }
}

dytech:intermediate
{
    {
        name = "mininghead-0",
        subgroup = "mining",

        -- Prototype templates (each template create a prototype)
        templates =
        { 
            { "item" },
            {
                template = "recipe",
                ingredients = 
                { 
                    { "steel-plate", 2 }
                },
            },
            { 
                template = "tech-add",
                name = "steel-processing"
            }
        }
    },
    -- { -- DyTech - Machine
    --     name = "mininghead-1",
    --     subgroup = "mining",

    --     -- Prototype templates (each template create a prototype)
    --     templates =
    --     {
    --         { "item" },
    --         {
    --             template = "recipe",
    --             energy_required = 5,
    --             ingredients = 
    --             { 
    --                 { "mininghead-0", 1 },
    --                 { "raw-ruby", 2 }
    --             },
    --         },
    --         { 
    --             template = "tech-add",
    --             name = "miner-2"
    --         }
    --     }
    -- },
    -- {
    --     name = "mininghead-2",
    --     subgroup = "mining",

    --     -- Prototype templates (each template create a prototype)
    --     templates =
    --     {
    --         { "item" },
    --         {
    --             template = "recipe",
    --             energy_required = 10,
    --             ingredients = 
    --             { 
    --                 { "mininghead-0", 1 },
    --                 { "raw-sapphire", 2 }
    --             },
    --         },
    --         { 
    --             template = "tech-add",
    --             name = "miner-3"
    --         }
    --     }
    -- },
    -- {
    --     name = "mininghead-3",
    --     subgroup = "mining",

    --     -- Prototype templates (each template create a prototype)
    --     templates =
    --     {
    --         { "item" },
    --         {
    --             template = "recipe",
    --             energy_required = 15,
    --             ingredients = 
    --             { 
    --                 { "mininghead-0", 1 },
    --                 { "raw-emerald", 2 }
    --             },
    --         },
    --         { 
    --             template = "tech-add",
    --             name = "miner-4"
    --         }
    --     }
    -- },
    -- {
    --     name = "mininghead-4",
    --     subgroup = "mining",

    --     -- Prototype templates (each template create a prototype)
    --     templates =
    --     {
    --         { "item" },
    --         {
    --             template = "recipe",
    --             energy_required = 20,
    --             ingredients = 
    --             { 
    --                 { "mininghead-0", 1 },
    --                 { "raw-topaz", 2 }
    --             },
    --         },
    --         { 
    --             template = "tech-add",
    --             name = "miner-5"
    --         }
    --     }
    -- },
    -- {
    --     name = "mininghead-5",
    --     subgroup = "mining",

    --     -- Prototype templates (each template create a prototype)
    --     templates =
    --     {
    --         { "item" },
    --         {
    --             template = "recipe",
    --             energy_required = 25,
    --             ingredients = 
    --             { 
    --                 { "mininghead-0", 1 },
    --                 { "raw-diamond", 2 }
    --             },
    --         },
    --         { 
    --             template = "tech-add",
    --             name = "miner-6"
    --         }
    --     }
    -- }
}
