dytech:extend
{
    {
        templates = { "machine", "machine-mk3", "machine-big", "compressor" },

        type = "assembling-machine",
        name = "compressor", 

        -- Energy usage
        energy_usage = "5000kW",
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.07 / 7.5
        },

        -- Interactions
        minable = { 
            result = "compressor"
        },

        -- Crafting
        crafting_categories = { "polishing" },
    }
}

data:extend
{
    -- The compressor item
    {
        type = "item",
        name = "compressor",
        icon = "__CORE-DyTech-Core__/graphics/machines/dytech-compressor-icon.png",
        flags = { "goes-to-quickbar" },
        subgroup = "dytech-machines-cleaning",
        order = "compressor",
        place_result = "compressor",
        stack_size = 50,
    },

    -- The compressor recipe
    {
        type = "recipe",
        name = "compressor",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            { "iron-plate", 100 },
            { "electronic-circuit", 25 },
            { "pipe", 2 },
            { "frame-1", 1 },
        },
        result= "compressor"
    },
}

-- Update technology
tech.add_recipe("gems", "compressor")
