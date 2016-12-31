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
}
