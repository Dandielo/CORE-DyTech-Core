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
    },
    {
        templates = { "machine", "machine-mk3", "machine-big", "sawmill" },

        type = "assembling-machine",
        name = "sawmill", 

        -- Custom health and resistances
        max_health = Health.Tier2,
        resistances = Resistances.Tier2,

        -- Energy usage
        energy_usage = "125kW",
        energy_source =
        {
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
}
