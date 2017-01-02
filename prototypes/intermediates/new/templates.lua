dytech:itemplate
{
    -- A default item template
    {
        tname = "item",
        type = "item",
        name = "{inter_name}",
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
        tname = "recipe",
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
        tname = "tech",
        type = "technology",

        icon = "__CORE-DyTech-Core__/graphics/intermediates/tech/{name}.png",
    },
    { 
        -- Doesnt change anythig, so can be used to alter existing technology recipes
        tname = "tech-add",
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
    -- Base gem types
    {
        tname = "raw-gem",

        name = "raw-{inter_name}",
        icon = "__CORE-DyTech-Core__/graphics/gems/raw-{inter_name}.png",
        subgroup = "dytech-gem-crystal",
    },
    {
        tname = "cut-gem",

        name = "cut-{inter_name}",
        icon = "__CORE-DyTech-Core__/graphics/gems/cut-{inter_name}.png",
        subgroup = "dytech-gem-cut",
    },
    {
        tname = "compressed-gem",

        name = "compressed-{inter_name}",
        icon = "__CORE-DyTech-Core__/graphics/gems/compressed-{inter_name}.png",
        subgroup = "dytech-gem-compressed",
    },

    -- Gem items
    {
        tname = "raw-gem-item",
        templates = { "item", "raw-gem" },
    },
    {
        tname = "cut-gem-item",
        templates = { "item", "cut-gem" },
    },
    {
        tname = "compressed-gem-item",
        templates = { "item", "compressed-gem" },
    },

    -- Gem recipes
    {
        tname = "cut-gem-recipe",
        templates = { "recipe", "cut-gem" },

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
        result = "cut-{inter_name}"
    },
    {
        tname = "compressed-gem-recipe",
        templates = { "recipe", "compressed-gem" },

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
        result = "compressed-{inter_name}"
    },

    -- Gem technologies,
    { 
        -- Doesnt change anythig, so can be used to alter existing technology recipes
        tname = "cut-gem-tech",
        type = "technology",
        name = "gems",

        -- Unlocks the recipe with the exact name of the 'intermediate'
        effects = { 
            ["{__next__}"] = { 
                type = "unlock-recipe",
                recipe = "cut-{inter_name}" 
            },
        }
    },
    { 
        -- Doesnt change anythig, so can be used to alter existing technology recipes
        tname = "compressed-gem-tech",
        type = "technology",
        name = "gems",

        -- Unlocks the recipe with the exact name of the 'intermediate'
        effects = { 
            ["{__next__}"] = { 
                type = "unlock-recipe",
                recipe = "compressed-{inter_name}" 
            },
        }
    }
}
