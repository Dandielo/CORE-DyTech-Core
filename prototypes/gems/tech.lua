dytech:new_extend
{
    {
        type = "technology",
        name = "gems-processing", 
        icon = "__dytech-core__/graphics/intermediates/tech/gems.png", 

        templates = { "science-red", "science-green" },
        prerequisites = { "water-cleaning" },
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "compressor"
            },
            {
                type = "unlock-recipe",
                recipe = "sort-gem-ore",
            },

            -- Cut gems 
            {
                type = "unlock-recipe",
                recipe = "cut-ruby",
            },
            {
                type = "unlock-recipe",
                recipe = "cut-sapphire",
            },
            {
                type = "unlock-recipe",
                recipe = "cut-emerald",
            },
            {
                type = "unlock-recipe",
                recipe = "cut-topaz",
            },
            {
                type = "unlock-recipe",
                recipe = "cut-diamond",
            },
        },

        unit = {
            count = 75,
            time = 100,
        },

        -- dytech fields
        optional = true,
        packname = "gems"
    },
    {
        type = "technology",
        name = "gems-processing-2", 
        icon = "__dytech-core__/graphics/intermediates/tech/gems.png",

        templates = { "science-red", "science-green", "science-blue" },
        prerequisites = { "gems-processing" },
        effects = 
        {
            -- Compressed gems
            {
                type = "unlock-recipe",
                recipe = "compressed-ruby",
            },
            {
                type = "unlock-recipe",
                recipe = "compressed-sapphire",
            },
            {
                type = "unlock-recipe",
                recipe = "compressed-emerald",
            },
            {
                type = "unlock-recipe",
                recipe = "compressed-topaz",
            },
            {
                type = "unlock-recipe",
                recipe = "compressed-diamond",
            },
        },

        unit = {
            count = 150,
            time = 100,
        },

        -- dytech fields
        optional = true,
        packname = "gems"
    }
}
