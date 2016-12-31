dytech:extend
{
    {
        templates = { "machine", "machine-mk2", "machine-small", "liquid-handler" },

        type = "assembling-machine",
        name = "liquid-handler",

        -- Custom health and resistances
        max_health = Health.Tier2,
        resistances = Resistances.Tier2,

        -- Energy usage
        energy_usage = "50kW",
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.01 / 2.5
        },

        -- Interactions 
        minable = { 
            result = "liquid-handler"
        },

        -- Custom module slots
        module_specification =
        {
            module_slots = 2
        },

        -- Crafting
        crafting_categories = { "liquid-handler" },
    },

    -- Liquid handler items
    {
        type = "item",
        name = "liquid-handler",
        icon = "__CORE-DyTech-Core__/graphics/machines/liquid-handler.png",
        flags = { "goes-to-quickbar" },
        subgroup = "dytech-machines-cleaning",
        order = "liquid-handler",
        place_result = "liquid-handler",
        stack_size = 50
    },

    -- Liquid handler recipes
    {
        type = "recipe",
        name = "liquid-handler",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            { "rotor-1", 10 },
            { "electronic-circuit", 3 },
            { "pipe", 2 },
            { "frame-1", 1 },
        },
        result = "liquid-handler"
    },

    -- Liquid handler technologies
    {
        templates = { "science-vfast", "science-red" },

        type = "technology",
        name = "water-cleaning",
        prerequisites = { "automation" },
        icon = "__CORE-DyTech-Core__/graphics/machines/water-cleaning.png",

        -- Recipes to unlock
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "liquid-handler"
            },
            {
                type = "unlock-recipe",
                recipe = "dirty-water-sand"
            },
            {
                type = "unlock-recipe",
                recipe = "dirty-water-stone"
            },
            {
                type = "unlock-recipe",
                recipe = "dirty-water-to-water"
            },
            {
                type = "unlock-recipe",
                recipe = "dirty-water-stone-sand-random"
            },
        },

        -- Units needed
        unit = {
            count = 50,
        },
    }
}
