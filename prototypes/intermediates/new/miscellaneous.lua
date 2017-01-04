dytech:load
{
    {
        name = "steel-processing",
        type = "technology"
    },
    {
         name = "solar-energy",
         type = "technology"
    }
}

dytech:intermediate
{
    -- Raw items
    {
        name = "resin",
        subgroup = "raw",
        order = "a[raw]-a[resin]",

        templates = 
        {
            { "item" }
        }
    },
    {
        name = "bone",
        subgroup = "raw",
        order = "a[raw]-b[bone]",

        templates = 
        {
            { "item" }
        }
    },
    {
        name = "chitin",
        subgroup = "raw",
        order = "a[raw]-c[chitin]",

        templates = 
        {
            { "item" }
        }
    },
    {
        name = "alien-artifact-fragment",
        subgroup = "raw",
        order = "a[raw]-d[alien-artifact-fragment]",

        templates = 
        {
            { "item" }
        }
    },

    -- Gear wheels 
    {
        name = "stone-gear-wheel",
        subgroup = "gears",
        order = "a[gears]-a[stone]",

        templates = 
        {
            { "item" },
            {
                template = "recipe",
                productivity = true,
                energy_required = 1,
                enabled = true,

                ingredients = 
                {
                    { "stone", 2 },
                }
            }
        }
    },
    {
        name = "steel-gear-wheel",
        subgroup = "gears",
        order = "a[gears]-b[steel]",

        templates = 
        {
            { "item" },
            {
                template = "recipe",
                productivity = true,
                energy_required = 2,

                ingredients = 
                {
                    { "steel-plate", 2 },
                }
            },
            {
                template = "tech-add",
                name = "steel-processing"
            }
        }
    },

    -- Sand items
    {
        name = "rubber",
        subgroup = "processing",
        order = "a[processing]-a[rubber]",

        templates = 
        {
            { "item" },
            {
                template = "recipe",
                category = "smelting",
                productivity = true,
                energy_required = 2,
                enabled = true,

                ingredients = 
                {
                    { "resin", 2 },
                }
            }
        }
    }, 
    {
        name = "sand",
        subgroup = "raw",
        order = "a[raw]-b[sand]",

        templates = 
        {
            { "item" },
            {
                template = "recipe",
                productivity = true,
                energy_required = 5,
                enabled = true,

                ingredients =
                {
                    { "stone", 1 }
                }
            }
        }
    },
    {
        name = "sandbag",
        subgroup = "processing",
        order = "a[processing]-c[sandbag]",

        templates = 
        {
            { "item" },
            {
                template = "recipe",
                energy_required = 0.5,
                enabled = true,

                ingredients =
                {
                    { "sand", 25 }
                }
            }
        }
    },
    {
        name = "quick-sand",
        subgroup = "processing",
        order = "a[processing]-d[quick-sand]",

        templates = 
        {
            { "item" },
            {
                template = "recipe",
                category = "crafting-with-fluid",
                energy_required = 0.5, 
                enabled = true,

                ingredients =
                {
                    { "sand", 5 },
                    {
                        type = "fluid",
                        name = "water",
                        amount = 5,
                    }
                }
            }
        }
    },
    {
        name = "glass",
        subgroup = "processing",
        order = "a[processing]-e[glass]",

        templates = 
        {
            { "item" },
            {
                template = "recipe",
                category = "smelting",
                energy_required = 2, 
                enabled = true,

                ingredients =
                {
                    { "sand", 2 }
                }
            }
        }
    },
    {
        name = "bone-charcoal",
        subgroup = "processing",
        order = "a[processing]-f[bone-charcoal]",

        templates = 
        {
            { 
                template = "item",
                fuel_value = "3.5MJ"
            },
            {
                template = "recipe",
                category = "smelting",
                energy_required = 2, 

                ingredients =
                {
                    { "bone", 1 }
                },
                result_count = 3,
            },
            {
                template = "tech-and-add",
                templates = { "science-red", "science-green" },
                name = "alien-repurpose",
                prerequisites = "military",

                unit = {
                    time = 20,
                    count = 20,
                }
            }
        }
    },
    {
        name = "solar-cell",
        subgroup = "all",
        order = "a[solar-cell]",

        templates = 
        {
            { "item" },
            {
                template = "recipe",
                category = "smelting",
                productivity = true,
                energy_required = 2, 

                ingredients =
                {
                    { "iron-plate", 3 }, -- { "silicon", 3 } -- metallurgy
                    { "copper-cable", 5 },
                    { "copper-plate", 1 }, -- { "iron-plate", 1 } -- metallurgy
                    { "glass", 2 }
                },
            },
            {
                template = "tech-add",
                name = "solar-energy"
            }
        }
    },
}
