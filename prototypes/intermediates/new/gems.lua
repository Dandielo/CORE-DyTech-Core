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
        templates = 
        {
            -- Raw
            { "raw-gem-item" },

            -- Cut
            { "cut-gem-item" },
            { "cut-gem-tech" },
            {
                template = "cut-gem-recipe",
                energy_required = 30,
            },

            -- Compressed
            { "compressed-gem-item" },
            { "compressed-gem-tech" },
            {
                template = "compressed-gem-recipe",
                energy_required = 60,
            }
        }
    },
    {
        name = "sapphire",
        templates = 
        {
            -- Raw
            { "raw-gem-item" },

            -- Cut
            { "cut-gem-item" },
            { "cut-gem-tech" },
            {
                template = "cut-gem-recipe",
                energy_required = 60,
            },

            -- Compressed
            { "compressed-gem-item" },
            { "compressed-gem-tech" },
            {
                template = "compressed-gem-recipe",
                energy_required = 120,
            }
        }
    },
    {
        name = "emerald",
        templates = 
        {
            -- Raw
            { "raw-gem-item" },

            -- Cut
            { "cut-gem-item" },
            { "cut-gem-tech" },
            {
                template = "cut-gem-recipe",
                energy_required = 90,
            },

            -- Compressed
            { "compressed-gem-item" },
            { "compressed-gem-tech" },
            {
                template = "compressed-gem-recipe",
                energy_required = 180,
            }
        }
    },
    {
        name = "topaz",
        templates = 
        {
            -- Raw
            { "raw-gem-item" },

            -- Cut
            { "cut-gem-item" },
            { "cut-gem-tech" },
            {
                template = "cut-gem-recipe",
                energy_required = 120,
            },

            -- Compressed
            { "compressed-gem-item" },
            { "compressed-gem-tech" },
            {
                template = "compressed-gem-recipe",
                energy_required = 240,
            }
        }
    },
    {
        name = "diamond",
        templates = 
        {
            -- Raw
            { "raw-gem-item" },

            -- Cut
            { "cut-gem-item" },
            { "cut-gem-tech" },
            {
                template = "cut-gem-recipe",
                energy_required = 150,
            },

            -- Compressed
            { "compressed-gem-item" },
            { "compressed-gem-tech" },
            {
                template = "compressed-gem-recipe",
                energy_required = 320,
            }
        }
    },
}
