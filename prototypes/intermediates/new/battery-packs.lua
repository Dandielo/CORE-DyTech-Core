dytech:resolved_template
{
    -- Battery pack recipe
    {
        tname = "battery-pack-recipe",
        templates = { "recipe" },
        ingredients = 
        { 
            ["{__next__}"] = { "battery", 10 }
        }
    },

    -- Battery pack tech
    {
        tname = "battery-pack-tech",
        templates = { "tech", "science-red", "science-green", "science-blue" },

        unit = {
            time = 30,
            count = 20,
        },
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "{inter_name}"
            }
        }
    }
}


-- Battery packs (these will probably land in a submod where it should be as it has no effect to the base game at all)
dytech:intermediate
{
    {
        name = "ruby-battery-pack",
        subgroup = "battery",
        order = "1",

        templates = 
        {
            { "item" },
            { 
                template = "battery-pack-recipe",
                energy_required = 5,
                ingredients = 
                {
                    { "compressed-ruby", 5 }
                }
            },
            { 
                template = "battery-pack-tech",

                name = "advanced-battery-1",
                prerequisites = { "battery" }
            }
        }
    },
    {
        name = "sapphire-battery-pack",
        subgroup = "battery",
        order = "2",

        templates = 
        {
            { "item" },
            { 
                template = "battery-pack-recipe",
                energy_required = 15,
                ingredients = 
                {
                    { "ruby-battery-pack", 1 },
                    { "compressed-sapphire", 5 }
                }
            },
            { 
                template = "battery-pack-tech",

                name = "advanced-battery-2",
                prerequisites = { "advanced-battery-1" }
            }
        }
    },
    {
        name = "emerald-battery-pack",
        subgroup = "battery",
        order = "3",

        templates = 
        {
            { "item" },
            { 
                template = "battery-pack-recipe",
                energy_required = 30,
                ingredients = 
                {
                    { "sapphire-battery-pack", 1 },
                    { "compressed-emerald", 5 }
                }
            },
            { 
                template = "battery-pack-tech",

                name = "advanced-battery-3",
                prerequisites = { "advanced-battery-2" }
            }
        }
    },
    {
        name = "topaz-battery-pack",
        subgroup = "battery",
        order = "4",

        templates = 
        {
            { "item" },
            { 
                template = "battery-pack-recipe",
                energy_required = 45,
                ingredients = 
                {
                    { "emerald-battery-pack", 1 },
                    { "compressed-topaz", 5 }
                }
            },
            { 
                template = "battery-pack-tech",

                name = "advanced-battery-4",
                prerequisites = { "advanced-battery-3" }
            }
        }
    },
    {
        name = "diamond-battery-pack",
        subgroup = "battery",
        order = "5",

        templates = 
        {
            { "item" },
            { 
                template = "battery-pack-recipe",
                energy_required = 60,
                ingredients = 
                {
                    { "topaz-battery-pack", 1 },
                    { "compressed-diamond", 5 }
                }
            },
            { 
                template = "battery-pack-tech",

                name = "advanced-battery-5",
                prerequisites = { "advanced-battery-4" }
            }
        }
    }
}
