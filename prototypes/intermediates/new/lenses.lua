dytech:load
{   -- load the given technology to add recipes to it
    {
        name = "optics",
        type = "technology",
    }    
}

dytech:resolved_template
{
    {
        tname = "lens-1",
        name = "{inter_name}-lens-1",
        icon = "__dytech-core__/graphics/intermediates/{inter_name}-lens-1.png",
    },
    {
        tname = "lens-2",
        name = "{inter_name}-lens-2",
        icon = "__dytech-core__/graphics/intermediates/{inter_name}-lens-2.png",
    },
    {
        tname = "lens-3",
        name = "{inter_name}-lens-3",
        icon = "__dytech-core__/graphics/intermediates/{inter_name}-lens-3.png",
    },

    -- Lens items
    {
        tname = "lens-item-1",
        templates = { "item", "lens-1" },
    },
    {
        tname = "lens-item-2",
        templates = { "item", "lens-2" },
    },
    {
        tname = "lens-item-3",
        templates = { "item", "lens-3" },
    },

    -- Lens recipes
    {
        tname = "lens-recipe-1",
        templates = { "recipe", "lens-1" },

        result = "{inter_name}-lens-1",
        ingredients = {
            { "basic-lens", 1 },
            { "raw-{inter_name}", 1 }
        }
    },
    {
        tname = "lens-recipe-2",
        templates = { "recipe", "lens-2" },

        result = "{inter_name}-lens-2",
        ingredients = {
            { "{inter_name}-lens-1", 1 },
            { "cut-{inter_name}", 2 }
        }
    },
    {
        tname = "lens-recipe-3",
        templates = { "recipe", "lens-3" },

        result = "{inter_name}-lens-3",
        ingredients = {
            { "{inter_name}-lens-2", 1 },
            { "compressed-{inter_name}", 4 }
        }
    }
}

dytech:intermediate
{
    {
        name = "basic-lens",
        subgroup = "turret-2",
        order = "0.1",

        templates = 
        {
            { "item" },
            {
                template = "recipe",
                ingredients = {
                    { "glass", 2 },
                    { "electronic-circuit", 5 }
                }
            },
            {
                template = "tech-add",
                name = "optics"
            }
        }
    },

    -- Special lenses (DyTech - war needed)
    -- {
    --     name = "ruby",
    --     subgroup = "turret-2",

    --     templates = 
    --     {
    --         { 
    --             template = "lens-item-1",
    --             order = "1.1",
    --         },
    --         { 
    --             template = "lens-item-2",
    --             order = "1.2",
    --         },
    --         { 
    --             template = "lens-recipe-1",
    --             ingredients = { 
    --                 [2] = { "cut-ruby", 2 }
    --             }
    --         },
    --         { 
    --             template = "lens-recipe-2",
    --             ingredients = { 
    --                 [2] = { "compressed-ruby", 4 }
    --             }
    --         },
    --         { 
    --             template = "tech-add",
    --             name = "lasser-turrets",
    --         }
    --     }
    -- },
    -- {
    --     name = "sapphire",
    --     subgroup = "turret-2",

    --     templates = 
    --     {
    --         { 
    --             template = "lens-item-1",
    --             order = "2.1",
    --         },
    --         { 
    --             template = "lens-item-2",
    --             order = "2.2",
    --         },
    --         { 
    --             template = "lens-item-3",
    --             order = "2.3",
    --         },
    --         { "lens-recipe-1" },
    --         { "lens-recipe-2" },
    --         { "lens-recipe-3" },
    --         { 
    --             template = "tech-add",
    --             name = "lasser-turrets-1",
    --         }
    --     }
    -- },
    -- {
    --     name = "emerald",
    --     subgroup = "turret-2",

    --     templates = 
    --     {
    --         { 
    --             template = "lens-item-1",
    --             order = "3.1",
    --         },
    --         { 
    --             template = "lens-item-2",
    --             order = "3.2",
    --         },
    --         { 
    --             template = "lens-item-3",
    --             order = "3.3",
    --         },
    --         { "lens-recipe-1" },
    --         { "lens-recipe-2" },
    --         { "lens-recipe-3" },
    --         { 
    --             template = "tech-add",
    --             name = "lasser-turrets-2",
    --         }
    --     }
    -- },
    -- {
    --     name = "topaz",
    --     subgroup = "turret-2",

    --     templates = 
    --     {
    --         { 
    --             template = "lens-item-1",
    --             order = "4.1",
    --         },
    --         { 
    --             template = "lens-item-2",
    --             order = "4.2",
    --         },
    --         { 
    --             template = "lens-item-3",
    --             order = "4.3",
    --         },
    --         { 
    --             template = "lens-recipe-1",
    --             ingredients = { 
    --                 [2] = { "raw-topaz", 4 }
    --             }
    --         },
    --         { 
    --             template = "lens-recipe-2",
    --             ingredients = { 
    --                 [2] = { "cut-topaz", 8 }
    --             }
    --         },
    --         { 
    --             template = "lens-recipe-3",
    --             ingredients = { 
    --                 [2] = { "compressed-topaz", 12 }
    --             }
    --         },
    --         { 
    --             template = "tech-add",
    --             name = "lasser-turrets-3",
    --         }
    --     }
    -- },
    -- {
    --     name = "diamond",
    --     subgroup = "turret-2",

    --     templates = 
    --     {
    --         { 
    --             template = "lens-item-1",
    --             order = "5.1",
    --         },
    --         { 
    --             template = "lens-item-2",
    --             order = "5.2",
    --         },
    --         { 
    --             template = "lens-item-3",
    --             order = "5.3",
    --         },
    --         { 
    --             template = "lens-recipe-1",
    --             ingredients = { 
    --                 [2] = { "raw-diamond", 200 }
    --             }
    --         },
    --         { 
    --             template = "lens-recipe-2",
    --             ingredients = { 
    --                 [2] = { "cut-diamond", 200 }
    --             }
    --         },
    --         { 
    --             template = "lens-recipe-3",
    --             ingredients = { 
    --                 [2] = { "compressed-diamond", 200 }
    --             }
    --         },
    --         { 
    --             template = "tech-add",
    --             name = "lasser-turrets-4",
    --         }
    --     }
    -- }
}
