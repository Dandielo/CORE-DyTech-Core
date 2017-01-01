dytech:template
{
    -- A default item template
    {
        name = "item",
        type = "item",
        order = "{name}",

        icon = "__CORE-DyTech-Core__/graphics/intermediates/{name}.png",
        subgroup = "dytech-intermediates-{subgroup}",
        flags = { "goes-to-main-inventory" },

        -- item defaults
        stack_size = 200,
        fuel_value = nil,
    },

    -- A default recipe template
    {
        name = "recipe",
        type = "recipe",
        enabled = false,

        icon = "__CORE-DyTech-Core__/graphics/intermediates/{name}.png",
        subgroup = "dytech-intermediates-{subgroup}",

        -- Ingredients and time
        energy_required = 2,
        ingredients = { },

        -- Recipe result
        result = "{name}",
        result_count = 1,

        -- Logistic network
        requester_paste_multiplier = 10
    },

    -- Default tech templates
    { 
        -- Doesnt change anythig, so can be used to alter existing technology recipes
        name = "tech-add",
        type = "technology",

        -- Unlocks the recipe with the exact name of the 'intermediate'
        effects = { 
            ["{inter_name}"] = { 
                type = "unlock-recipe",
                recipe = "{inter_name}" 
            }
        }
    }
}

-- Gem specific templates
dytech:template
{
    -- Override for each base template
    {
        name = "gem",

        icon = "__CORE-DyTech-Core__/graphics/gems/{name}.png",
        subgroup = "dytech-gem-{subgroup}",
    },

    -- Gem specific templates
    {
        name = "gem-item",
        templates = { "item", "gem" }
    },
    {
        name = "gem-recipe",
        templates = { "recipe", "gem" }
    },
}
