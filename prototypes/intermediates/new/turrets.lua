dytech:load
{   -- We need to load this prototype into dytech prototype resolver to add recipes to tech without issues
    {
        name = "flame-thrower",
        type = "technology"
    }
}

dytech:intermediate
{
    {
        name = "turret-guidance",
        subgroup = "turret",
        
        templates = 
        {
            { "item" },
            { 
                template = "tech-add",
                name = "turrets"
            },
            {
                template = "recipe",
                energy_required = 5,

                ingredients = 
                {
                    { "iron-plate", 5 },
                    { "basic-lens", 1 },
                    { "electronic-circuit", 1 }
                }
            }
        }
    },

    -- Gun turrets,
    {
        name = "gun-turret-base",
        subgroup = "turret",

        templates = 
        {
            { "item" },
            {
                template = "tech-add",
                name = "turrets",
            },
            {
                template = "recipe",
                energy_required = 5,

                ingredients = 
                {
                     { "iron-plate", 5 },
                     { "frame-1", 1 }, 
                }
            }
        }
    },
    {
        name = "gun-turret-stock",
        subgroup = "turret",

        templates = 
        {
            { "item" },
            {
                template = "tech-add",
                name = "turrets",
            },
            {
                template = "recipe",
                energy_required = 5,

                ingredients = 
                {
                     { "submachine-gun", 1 },
                     { "steel-plate", 2 }, 
                }
            }
        }
    },

    -- Flame thrower turrets
    {
        name = "portable-tank",
        subgroup = "turret",

        templates = 
        {
            { "item" },
            { 
                template = "tech-add", 
                name = "flame-thrower"
            },
            {
                template = "recipe",
                energy_required = 5,

                ingredients = 
                {
                    { "iron-plate", 10 } -- { "aluminium-plate", 10 } -- metallurgy
                }
            }
        }
    },
    {
        name = "flame-thrower-nozzle",
        subgroup = "turret",

        templates = 
        {
            { "item" },
            {
                template = "tech-add",
                name = "flame-thrower",
            },
            {
                template = "recipe",
                energy_required = 5,

                ingredients = 
                {
                     { "pipe", 5 },
                     { "steel-plate", 5 } -- { "steel-plate-01", 5 } -- metallurgy
                }
            }
        }
    },
    {
        name = "flame-turret-base",
        subgroup = "turret",

        templates = 
        {
            { "item" },
            {
                template = "tech-add",
                name = "flame-thrower",
            },
            {
                template = "recipe",
                energy_required = 5,

                ingredients = 
                {
                     { "portable-tank", 5 },
                     { "engine-unit", 5 }, 
                     { "frame-2", 1 }, 
                }
            }
        }
    },
    {
        name = "flame-turret-stock",
        subgroup = "turret",

        templates = 
        {
            { "item" },
            {
                template = "tech-add",
                name = "flame-thrower",
            },
            {
                template = "recipe",
                energy_required = 5,

                ingredients = 
                {
                     { "flame-thrower", 1 },
                     { "steel-plate", 2 }, 
                }
            }
        }
    },

    -- Laser turrets
    {
        name = "laser-turret-base",
        subgroup = "turret",

        templates = 
        {
            { "item" },
            {
                template = "tech-add",
                name = "laser-turrets",
            },
            {
                template = "recipe",
                energy_required = 5,

                ingredients = 
                {
                     { "battery", 5 },
                     { "iron-plate", 5 }, -- { "titanium-plate", 5 } -- metallurgy
                     { "frame-3", 1 }, 
                     { "iron-gear-wheel", 1 }, -- { "brass-gear-wheel", 5 } -- metallurgy
                }
            }
        }
    },
    {
        name = "laser-turret-stock",
        subgroup = "turret",

        templates = 
        {
            { "item" },
            {
                template = "tech-add",
                name = "laser-turrets",
            },
            {
                template = "recipe",
                energy_required = 5,

                ingredients = 
                {
                     { "battery", 5 },
                     { "advanced-circuit", 5 }, 
                     { "steel-plate", 5 }, -- { "aluminium-plate", 5 } -- metallurgy
                }
            }
        }
    }
}
