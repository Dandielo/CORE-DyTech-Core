dytech:extend
{
    {
        templates = { "machine", "machine-mk3", "machine-big", "greenhouse" },

        type = "assembling-machine",
        name = "DT-greenhouse",

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
            result = "DT-greenhouse"
        },
      
        -- Crafting
        crafting_categories = { "greenhouse" },
    },

    -- Greenhouse items
    {
        type = "item",
        name = "DT-greenhouse",
        icon = "__dytech-core__/graphics/machines/greenhouse.png",
        flags = { "goes-to-quickbar" },
        subgroup = "dytech-machines-cleaning",
        order = "greenhouse",
        place_result = "DT-greenhouse",
        stack_size = 50,
    },

    -- Greenhouse recipes
    {
        type = "recipe",
        name = "DT-greenhouse",
        enabled = false,

        energy_required = 10,
        ingredients =
        {
            { "frame-1", 1 },
            { "electronic-circuit", 5 },
            { "pipe", 2 },
        },
        result = "DT-greenhouse"
    },

    -- Greenhouse technology
    {
        type = "technology",
        name = "DT-greenhouse",
        templates = { "science-red" },
        icon = "__dytech-core__/graphics/machines/greenhouse.png",
        prerequisites = { "water-cleaning" },

        effects = 
        { 
            {
                type = "unlock-recipe",
                recipe = "DT-greenhouse",
            }
        },
        unit = {
            time = 10,
            count = 30,
        }
    }
}
