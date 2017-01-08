dytech:intermediate
{
    {
        name = "capacitor-1",
        subgroup = "power",
        order = "a[power]-b[capacitor]-a[basic]", -- Lets try using 'default' ordering

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
                    { "iron-plate", 1 },
                    { "copper-cable", 5 }
                }
            },

        }
    },
    {
        name = "flux-capacitor-1",
        subgroup = "power",
        order = "a[power]-b[capacitor]-a[flux]", -- Lets try using 'default' ordering

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
                    { "capacitor-1", 1 },
                    { "iron-plate", 1 },
                    { "copper-cable", 5 }
                }
            }
        }
    },
    {   -- Dytech - Power
        name = "capacitor-2",
        subgroup = "power",
        order = "a[power]-b[capacitor]-b[basic]", -- Lets try using 'default' ordering

        templates = 
        {
            { "item" },
            { 
                template = "recipe",
                productivity = true,
                energy_required = 7.5,

                ingredients = 
                {
                    { "capacitor-1", 2 },
                    { "copper-cable", 5 },
                    -- { "tin-plate", 2 } -- metallurgy
                }
            },
            { 
                template = "tech-and-add",
                templates = { "science-red", "science-green" },
                prerequisites = { "steel-processing" }, -- + { "tin-processing" }
                unit = {
                    time = 100,
                    count = 75
                }
            }
        }
    },
    {   -- Dytech - Power
        name = "capacitor-3",
        subgroup = "power",
        order = "a[power]-b[capacitor]-c[basic]", -- Lets try using 'default' ordering

        templates = 
        {
            { "item" },
            { 
                template = "recipe",
                productivity = true,
                energy_required = 10,

                ingredients = 
                {
                    { "capacitor-2", 2 },
                    { "copper-cable", 5 }, -- { "silver-plate", 2 } -- metallurgy
                    -- { "aluminium-wire", 5 } -- metallurgy
                }
            },
            { 
                template = "tech-and-add",
                templates = { "science-red", "science-green", "science-blue" },
                prerequisites = { "capacitor-2" }, -- + { "silver-processing", "aluminium-processing" }
                unit = {
                    time = 100,
                    count = 125
                }
            }
        }
    },
    {   -- Dytech - Power
        name = "capacitor-4",
        subgroup = "power",
        order = "a[power]-b[capacitor]-d[basic]", -- Lets try using 'default' ordering

        templates = 
        {
            { "item" },
            { 
                template = "recipe",
                productivity = true,
                energy_required = 12.5,

                ingredients = 
                {
                    { "capacitor-3", 2 },
                    { "copper-cable", 5 }, -- { "gold-plate", 2 } -- metallurgy
                    -- { "gold-wire", 5 } -- metallurgy
                }
            },
            { 
                template = "tech-and-add",
                templates = { "science-red", "science-green", "science-blue" },
                prerequisites = { "capacitor-3" }, -- + { "gold-processing" }
                unit = {
                    time = 150,
                    count = 250
                }
            }
        }
    },
    {   -- Dytech - Power
        name = "capacitor-5",
        subgroup = "power",
        order = "a[power]-b[capacitor]-e[basic]", -- Lets try using 'default' ordering

        templates = 
        {
            { "item" },
            { 
                template = "recipe",
                productivity = true,
                energy_required = 15,

                ingredients = 
                {
                    { "capacitor-4", 2 },
                    { "copper-cable", 5 }, -- { "electrum-alloy", 2 } -- metallurgy
                    -- { "electrum-wire", 2 } -- metallurgy
                }
            },
            { 
                template = "tech-and-add",
                templates = { "science-red", "science-green", "science-blue" },
                prerequisites = { "capacitor-4" }, -- + { "lava-smelting-04" }
                unit = {
                    time = 150,
                    count = 375
                }
            }
        }
    },
    {
        name = "flux-capacitor-2",
        subgroup = "power",
        order = "a[power]-b[capacitor]-b[flux]", -- Lets try using 'default' ordering

        templates = 
        {
            { "item" },
            { 
                template = "recipe",
                productivity = true,
                energy_required = 7.5,

                ingredients = 
                {
                    { "capacitor-2", 1 },
                    { "flux-capacitor-1", 2 },
                    { "copper-cable", 5 },
                    -- { "tin-plate", 5 } -- metallurgy 
                }
            },
            {
                template = "tech-add",
                name = "capacitor-2"
            }
        }
    },
    {
        name = "flux-capacitor-3",
        subgroup = "power",
        order = "a[power]-b[capacitor]-c[flux]", -- Lets try using 'default' ordering

        templates = 
        {
            { "item" },
            { 
                template = "recipe",
                productivity = true,
                energy_required = 10,

                ingredients = 
                {
                    { "capacitor-3", 1 },
                    { "flux-capacitor-2", 2 },
                    { "copper-cable", 5 }, --  { "aluminium-wire", 5 } -- metallurgy
                    -- { "silver-plate", 5 } -- metallurgy 
                }
            },
            {
                template = "tech-add",
                name = "capacitor-3"
            }
        }
    },
    {
        name = "flux-capacitor-4",
        subgroup = "power",
        order = "a[power]-b[capacitor]-d[flux]", -- Lets try using 'default' ordering

        templates = 
        {
            { "item" },
            { 
                template = "recipe",
                productivity = true,
                energy_required = 12.5,

                ingredients = 
                {
                    { "capacitor-4", 1 },
                    { "flux-capacitor-3", 2 },
                    { "copper-cable", 5 }, --  { "gold-wire", 5 } -- metallurgy
                    -- { "gold-plate", 5 } -- metallurgy 
                }
            },
            {
                template = "tech-add",
                name = "capacitor-4"
            }
        }
    },
    {
        name = "flux-capacitor-5",
        subgroup = "power",
        order = "a[power]-b[capacitor]-e[flux]", -- Lets try using 'default' ordering

        templates = 
        {
            { "item" },
            { 
                template = "recipe",
                productivity = true,
                energy_required = 15,

                ingredients = 
                {
                    { "capacitor-5", 1 },
                    { "flux-capacitor-4", 2 },
                    { "copper-cable", 5 }, --  { "electrum-wire", 5 } -- metallurgy
                    -- { "electrum-alloy", 5 } -- metallurgy 
                }
            },
            {
                template = "tech-add",
                name = "capacitor-5"
            }
        }
    },
}
