dytech:intermediate
{
    -- Raw gems 
    {
        name = "raw-gems",
        subgroup = "crystal",
        templates = 
        {
            {
                template = "gem-item",
                name = "raw-sapphire"
            },
            { 
                template = "gem-item",
                name = "raw-ruby",
            },
            { 
                template = "gem-item",
                name = "raw-emerald",
            },
            { 
                template = "gem-item",
                name = "raw-topaz",
            },
            { 
                template = "gem-item",
                name = "raw-diamond",
            },
        },
    },
}

dytech:intermediate
{
    -- Gems technology
    {
        name = "gems",
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
        name = "cut-ruby",
        subgroup = "cut",
        templates = 
        {
            { "gem-item" },
            { 
                template = "tech-add",
                name = "gems"
            },
            {
                template = "gem-recipe",
                category = "polishing",
                energy_required = 30,
                ingredients = 
                {
                    { 
                        type = "item",
                        name = "raw-ruby",
                        amount = 1,
                    },
                    {
                        type = "fluid",
                        name = "clean-water",
                        amount = 50
                    }
                }
            }
        }
    },
    {
        name = "cut-sapphire",
        subgroup = "cut",
        templates = 
        {
            { "gem-item" },
            { 
                template = "tech-add",
                name = "gems"
            },
            {
                template = "gem-recipe",
                category = "polishing",
                energy_required = 60,
                ingredients = 
                {
                    { 
                        type = "item",
                        name = "raw-sapphire",
                        amount = 1,
                    },
                    {
                        type = "fluid",
                        name = "clean-water",
                        amount = 50
                    }
                }
            }
        }
    },
    {
        name = "cut-emerald",
        subgroup = "cut",
        templates = 
        {
            { "gem-item" },
            { 
                template = "tech-add",
                name = "gems"
            },
            {
                template = "gem-recipe",
                category = "polishing",
                energy_required = 90,
                ingredients = 
                {
                    { 
                        type = "item",
                        name = "raw-emerald",
                        amount = 1,
                    },
                    {
                        type = "fluid",
                        name = "clean-water",
                        amount = 50
                    }
                }
            }
        }
    },
    {
        name = "cut-topaz",
        subgroup = "cut",
        templates = 
        {
            { "gem-item" },
            { 
                template = "tech-add",
                name = "gems"
            },
            {
                template = "gem-recipe",
                category = "polishing",
                energy_required = 120,
                ingredients = 
                {
                    { 
                        type = "item",
                        name = "raw-topaz",
                        amount = 1,
                    },
                    {
                        type = "fluid",
                        name = "clean-water",
                        amount = 50
                    }
                }
            }
        }
    },
    {
        name = "cut-diamond",
        subgroup = "cut",
        templates = 
        {
            { "gem-item" },
            { 
                template = "tech-add",
                name = "gems"
            },
            {
                template = "gem-recipe",
                category = "polishing",
                energy_required = 150,
                ingredients = 
                {
                    { 
                        type = "item",
                        name = "raw-diamond",
                        amount = 1,
                    },
                    {
                        type = "fluid",
                        name = "clean-water",
                        amount = 50
                    }
                }
            }
        }
    },

    -- Compressed gems
    {
        name = "compressed-ruby",
        subgroup = "compressed",
        templates = 
        {
            { "gem-item" },
            { 
                template = "tech-add",
                name = "gems"
            },
            {
                template = "gem-recipe",
                category = "polishing",
                energy_required = 60,
                ingredients = 
                {
                    { 
                        type = "item",
                        name = "cut-ruby",
                        amount = 1,
                    },
                    {
                        type = "fluid",
                        name = "clean-water",
                        amount = 50
                    }
                }
            }
        }
    },
    {
        name = "compressed-sapphire",
        subgroup = "compressed",
        templates = 
        {
            { "gem-item" },
            { 
                template = "tech-add",
                name = "gems"
            },
            {
                template = "gem-recipe",
                category = "polishing",
                energy_required = 120,
                ingredients = 
                {
                    { 
                        type = "item",
                        name = "cut-sapphire",
                        amount = 1,
                    },
                    {
                        type = "fluid",
                        name = "clean-water",
                        amount = 50
                    }
                }
            }
        }
    },
    {
        name = "compressed-emerald",
        subgroup = "compressed",
        templates = 
        {
            { "gem-item" },
            { 
                template = "tech-add",
                name = "gems"
            },
            {
                template = "gem-recipe",
                category = "polishing",
                energy_required = 180,
                ingredients = 
                {
                    { 
                        type = "item",
                        name = "cut-emerald",
                        amount = 1,
                    },
                    {
                        type = "fluid",
                        name = "clean-water",
                        amount = 50
                    }
                }
            }
        }
    },
    {
        name = "compressed-topaz",
        subgroup = "compressed",
        templates = 
        {
            { "gem-item" },
            { 
                template = "tech-add",
                name = "gems"
            },
            {
                template = "gem-recipe",
                category = "polishing",
                energy_required = 240,
                ingredients = 
                {
                    { 
                        type = "item",
                        name = "cut-topaz",
                        amount = 1,
                    },
                    {
                        type = "fluid",
                        name = "clean-water",
                        amount = 50
                    }
                }
            }
        }
    },
    {
        name = "compressed-diamond",
        subgroup = "compressed",
        templates = 
        {
            { "gem-item" },
            { 
                template = "tech-add",
                name = "gems"
            },
            {
                template = "gem-recipe",
                category = "polishing",
                energy_required = 320,
                ingredients = 
                {
                    { 
                        type = "item",
                        name = "cut-diamond",
                        amount = 1,
                    },
                    {
                        type = "fluid",
                        name = "clean-water",
                        amount = 50
                    }
                }
            }
        }
    }
}
