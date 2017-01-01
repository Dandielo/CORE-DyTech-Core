 dytech:intermediate
{
    -- Raw gems 
    {
        name = "raw-gems",
        subgroup = "crystal",
        templates = 
        {
            {
                template = "raw-gem",
                name = "raw-sapphire"
            },
            { 
                template = "raw-gem",
                name = "raw-ruby",
            },
            { 
                template = "raw-gem",
                name = "raw-emerald",
            },
            { 
                template = "raw-gem",
                name = "raw-topaz",
            },
            { 
                template = "raw-gem",
                name = "raw-diamond",
            },
        },
    },
}

dytech:intermediate
{
    -- Gems technology
    {
        name = "gems", -- Dont change this name or change it in the 'templates.lua' file too
        templates = 
        {
            {
                template = "tech",
                templates = { "science-red", "science-green" },
                prerequisites = { "water-cleaning" },
                unit = {
                    count = 75,
                    time = 100,
                }
            } 
        }
    },

    -- Cut gems
    {
        name = "ruby",
        subgroup = "cut",
        templates = 
        {
            { "gem-item" },
            { "gem-tech" },
            {
                template = "cut-gem-recipe",
                energy_required = 30,
            }
        }
    },
    {
        name = "sapphire",
        subgroup = "cut",
        templates = 
        {
            { "gem-item" },
            { "gem-tech" },
            {
                template = "cut-gem-recipe",
                energy_required = 60,
            }
        }
    },
    {
        name = "emerald",
        subgroup = "cut",
        templates = 
        {
            { "gem-item" },
            { "gem-tech" },
            {
                template = "cut-gem-recipe",
                energy_required = 90,
            }
        }
    },
    {
        name = "topaz",
        subgroup = "cut",
        templates = 
        {
            { "gem-item" },
            { "gem-tech" },
            {
                template = "cut-gem-recipe",
                energy_required = 120,
            }
        }
    },
    {
        name = "diamond",
        subgroup = "cut",
        templates = 
        {
            { "gem-item" },
            { "gem-tech" },
            {
                template = "cut-gem-recipe",
                energy_required = 150,
            }
        }
    },

    -- Compressed gems
    {
        name = "ruby",
        subgroup = "compressed",
        templates = 
        {
            { "gem-item" },
            { "gem-tech" },
            {
                template = "polish-gem-recipe",
                energy_required = 60,
            }
        }
    },
    {
        name = "sapphire",
        subgroup = "compressed",
        templates = 
        {
            { "gem-item" },
            { "gem-tech" },
            {
                template = "polish-gem-recipe",
                energy_required = 120,
            }
        }
    },
    {
        name = "emerald",
        subgroup = "compressed",
        templates = 
        {
            { "gem-item" },
            { "gem-tech" },
            {
                template = "polish-gem-recipe",
                energy_required = 180,
            }
        }
    },
    {
        name = "topaz",
        subgroup = "compressed",
        templates = 
        {
            { "gem-item" },
            { "gem-tech" },
            {
                template = "polish-gem-recipe",
                energy_required = 240,
            }
        }
    },
    {
        name = "diamond",
        subgroup = "compressed",
        templates = 
        {
            { "gem-item" },
            { "gem-tech" },
            {
                template = "polish-gem-recipe",
                energy_required = 320,
            }
        }
    }
}
