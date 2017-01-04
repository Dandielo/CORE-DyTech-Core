data:extend
{ 
    {
        type = "recipe",
        name = "DT-germling",
        result = "DT-germling",
        subgroup = "dytech-intermediates-raw",
        order = "8",
        result_count = 1,
        ingredients = 
        {
            { "raw-wood", 1 }
        },
    },
    {
        type = "recipe",
        name = "greenhouse-wood",
        category = "greenhouse",
        icon = "__base__/graphics/icons/raw-wood.png",
        energy_required = 120,
        subgroup = "dytech-intermediates-raw",
        order = "8",
        enabled = true,
        ingredients =
        {
            { "DT-germling", 1 },
            {
                type = "fluid", 
                name = "water", 
                amount = 5
            },
        },
        result = "raw-wood",
        result_count = 10
    },
    {
        type = "recipe",
        name = "greenhouse-sulfur",
        category = "greenhouse",
        icon = "__dytech-core__/graphics/sulfur-tree/wood.png",
        energy_required = 240,
        enabled = true,
        subgroup = "dytech-intermediates-raw",
        order = "82",
        ingredients =
        {
            { "sulfur-seed", 1 },
            {
                type = "fluid", 
                name = "water", 
                amount = 5
            },
        },
        result = "sulfur-wood",
        result_count = 10
    },
    {
        type = "recipe",
        name = "greenhouse-rubber",
        category = "greenhouse",
        icon = "__dytech-core__/graphics/intermediates/resin.png",
        energy_required = 180,
        enabled = true,
        subgroup = "dytech-intermediates-raw",
        order = "81",
        ingredients =
        {
            { "rubber-seed", 1 },
            { 
                type = "fluid", 
                name = "water", 
                amount = 5
            },
        },
        result = "resin",
        result_count = 10
    },
}
