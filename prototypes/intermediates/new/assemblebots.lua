dytech:load
{
    {
        name = "automation",
        type = "technology"
    }
}

dytech:intermediate
{
    {
        name = "assemblebot-1",
        subgroup = "assemble",
        order = "a[assemblebot]-a",

        templates =
        {
            { "item" },
            {
                template = "recipe",
                energy_required = 2,

                ingredients =
                {
                    { "inserter", 3 },
                    { "iron-gear-wheel", 9, },
                    { "electronic-circuit", 3 }
                }
            },
            { 
                template = "tech-add",
                name = "automation"
            }
        }
    },
    {
        name = "assemblebot-2",
        subgroup = "assemble",
        order = "a[assemblebot]-b",

        templates =
        {
            { "item" },
            {
                template = "recipe",
                energy_required = 4,

                ingredients =
                {
                    { "assemblebot-1", 1 },
                    { "fast-inserter", 5 },
                    { "steel-gear-wheel", 15 },
                    { "electronic-circuit", 5 }
                }
            },
            { 
                template = "tech-and-add",
                templates = { "science-red", "science-green" },
                prerequisites = { "automation-2" },
                
                unit = { 
                    time = 100,
                    count = 75
                }
            }
        }
    },
    {
        name = "assemblebot-3",
        subgroup = "assemble",
        order = "a[assemblebot]-c",

        templates =
        {
            { "item" },
            {
                template = "recipe",
                energy_required = 6,

                ingredients =
                {
                    { "assemblebot-2", 1 },
                    { "fast-inserter", 5 },
                    { "steel-gear-wheel", 15 }, -- { "bronze-gear-wheel", 15 } -- metallurgy
                    { "advanced-circuit", 5 }
                }
            },
            { 
                template = "tech-and-add",
                templates = { "science-red", "science-green", "science-blue" },
                prerequisites = { "assemblebot-2" },
                
                unit = { 
                    time = 125,
                    count = 100
                }
            }
        }
    },
    {   -- Dytech - machine
        name = "assemblebot-4",
        subgroup = "assemble",
        order = "a[assemblebot]-d",

        templates =
        {
            { "item" },
            {
                template = "recipe",
                energy_required = 8,

                ingredients =
                {
                    { "assemblebot-3", 1 },
                    { "fast-inserter", 5 },
                    { "steel-gear-wheel", 15 }, -- { "brass-gear-wheel", 15 } -- metallurgy
                    { "advanced-circuit", 5 }
                }
            },
            { 
                template = "tech-and-add",
                templates = { "science-red", "science-green", "science-blue" },
                prerequisites = { "assemblebot-3" },

                unit = { 
                    time = 150,
                    count = 250
                }
            }
        },

        optional = true,
        packname = "extended-assemblebots"
    },
    {
        name = "assemblebot-5",
        subgroup = "assemble",
        order = "a[assemblebot]-e",

        templates =
        {
            { "item" },
            {
                template = "recipe",
                energy_required = 10,

                ingredients =
                {
                    { "assemblebot-4", 1 },
                    { "fast-inserter", 5 },
                    { "steel-gear-wheel", 15 }, -- { "copper-tungsten-gear-wheel", 15 } -- metallurgy
                    { "processing-unit", 5 }
                }
            },
            { 
                template = "tech-and-add",
                templates = { "science-red", "science-green", "science-blue" },
                prerequisites = { "assemblebot-4" },

                unit = { 
                    time = 150,
                    count = 375
                }
            }
        },

        optional = true,
        packname = "extended-assemblebots"
    },
    { 
        name = "assemblebot-6",
        subgroup = "assemble",
        order = "a[assemblebot]-f",

        templates =
        {
            { "item" },
            {
                template = "recipe",
                energy_required = 12,

                ingredients =
                {
                    { "assemblebot-5", 1 },
                    { "fast-inserter", 5 },
                    { "steel-gear-wheel", 15 }, -- { "stainless-steel-gear-wheel", 15 } -- metallurgy
                    { "advanced-processing-unit", 5 }
                }
            },
            { 
                template = "tech-and-add",
                templates = { "science-red", "science-green", "science-blue" },
                prerequisites = { "assemblebot-5" },

                unit = { 
                    time = 150,
                    count = 450
                }
            }
        },

        optional = true,
        packname = "extended-assemblebots"
    },
    { 
        name = "assemblebot-7",
        subgroup = "assemble",
        order = "a[assemblebot]-g",

        templates =
        {
            { "item" },
            {
                template = "recipe",
                energy_required = 15,

                ingredients =
                {
                    { "assemblebot-6", 1 },
                    { "fast-inserter", 5 },
                    { "steel-gear-wheel", 15 }, -- { "stellite-gear-wheel", 15 } -- metallurgy
                    { "logic-diamond-processor", 5 }
                }
            },
            { 
                template = "tech-and-add",
                templates = { "science-red", "science-green", "science-blue" },
                prerequisites = { "assemblebot-6" },

                unit = { 
                    time = 150,
                    count = 650
                }
            }
        },

        optional = true,
        packname = "extended-assemblebots"
    }
}
 