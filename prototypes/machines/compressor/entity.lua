dytech:extend
{
    {
        templates = { "machine", "machine-mk3", "machine-big", "compressor" },

        type = "assembling-machine",
        name = "compressor", 

        -- Energy usage
        energy_usage = "5000kW",

        -- Interactions
        minable = { 
            result = "compressor"
        },

        -- Crafting
        crafting_categories = { "polishing" },
    },
}
