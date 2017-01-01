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
        name = "tech",
        type = "technology",

        icon = "__CORE-DyTech-Core__/graphics/intermediates/tech/{name}.png",
    },
    { 
        -- Doesnt change anythig, so can be used to alter existing technology recipes
        name = "tech-add",
        type = "technology",

        -- Unlocks the recipe with the exact name of the 'intermediate'
        effects = { 
            ["{__next__}"] = { 
                type = "unlock-recipe",
                recipe = "{inter_name}" 
            }
        }
    }
}

-- Gem specific templates
dytech:itemplate
{
    -- Override for each base template
    {
        tname = "gem",

        icon = "__CORE-DyTech-Core__/graphics/gems/{subgroup}-{inter_name}.png",
        subgroup = "dytech-gem-{subgroup}",
    },

    -- Gem specific templates
    {
        tname = "raw-gem",
        templates = { "item" },

        icon = "__CORE-DyTech-Core__/graphics/gems/{name}.png",
        subgroup = "dytech-gem-{subgroup}",
    },
    {
        tname = "gem-item",
        templates = { "item", "gem" },

        -- The desired name 
        name = "{subgroup}-{inter_name}",
    },

    -- Cut recipe
    {
        tname = "cut-gem-recipe",
        templates = { "recipe", "gem" },

        -- The desired name 
        name = "{subgroup}-{inter_name}",
        category = "polishing",
        ingredients = 
        {
            { 
                type = "item",
                name = "raw-{inter_name}",
                amount = 1,
            },
            {
                type = "fluid",
                name = "clean-water",
                amount = 50
            }
        },
        result = "{subgroup}-{inter_name}"
    },

    -- Polish recipe
    {
        tname = "polish-gem-recipe",
        templates = { "recipe", "gem" },

        -- The desired name 
        name = "{subgroup}-{inter_name}",
        category = "polishing",
        ingredients = 
        {
            { 
                type = "item",
                name = "cut-{inter_name}",
                amount = 1,
            },
            {
                type = "fluid",
                name = "clean-water",
                amount = 50
            }
        },
        result = "{subgroup}-{inter_name}"
    },

    -- Gem technologies,
    { 
        -- Doesnt change anythig, so can be used to alter existing technology recipes
        tname = "gem-tech",
        type = "technology",
        name = "gems",

        -- Unlocks the recipe with the exact name of the 'intermediate'
        effects = { 
            ["{__next__}"] = { 
                type = "unlock-recipe",
                recipe = "{subgroup}-{inter_name}" 
            }
        }
    }
}
