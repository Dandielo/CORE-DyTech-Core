dytech:extend 
{
    {
        templates = { "machine", "machine-mk3", "machine-big", "sawmill" },

        type = "assembling-machine",
        name = "sawmill", 

        -- Custom health and resistances
        max_health = Health.Tier2,
        resistances = Resistances.Tier2,

        -- Energy usage
        energy_usage = "125kW",
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.01 / 0.5
        },

        -- Interactions
        minable = { 
            result = "sawmill"
        },

        -- Crafting
        crafting_categories = { "sawmill" },
    },

    -- Sawmill items
    {
        type = "item",
        name = "sawmill", 
        icon = "__dytech-core__/graphics/machines/centrifuge-icon.png", 
        flags = { "goes-to-quickbar" },
        order = "seed-rubber",
        subgroup = "dytech-machines-assembling",
        stack_size = 50,
        enabled = false,
        place_result = "sawmill",
    },

    -- Sawmill recipes
    {
        type = "recipe",
        name = "sawmill", 
        icon = "__dytech-core__/graphics/machines/centrifuge-icon.png", 
        subgroup = "dytech-machines-assembling",
        enabled = false,
        energy_required = 7.5,
        ingredients = 
        {
            { "iron-plate", 25 },
            { "steel-plate", 10 },
            { "iron-gear-wheel", 25 },
            { "copper-cable", 10 }
        },
        result = "sawmill"
    },

    -- Sawmill technologies
    {
        templates = { "science-vfast", "science-red" },
        
        type = "technology",
        name = "sawmill",
        icon = "__dytech-core__/graphics/machines/centrifuge-icon.png",
        order = "c-k-f-e",
        prerequisites = { "automation" },

        -- Recipes to unlock
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "sawmill"
            },
            {
                type = "unlock-recipe",
                recipe = "raw-wood-processing"
            },
        },

        -- Units needed
        unit = {
            count = 10,
        },
    },
}
