data:extend
{ 
    {
        type = "recipe",
        name = "sulfur-seed",
        icon = "__dytech-core__/graphics/sulfur-tree/stage-1.png",

        result = "sulfur-seed",
        energy_required = 1,

        ingredients = 
        {
            { "sulfur-wood", 1 },
        },
    },
    {
        type = "recipe",
        name = "sulfur-from-wood",
        icon = "__base__/graphics/icons/sulfur.png",

        result = "sulfur",
        result_count = 2,
        energy_required = 1,

        ingredients = 
        {
            { "sulfur-wood", 1 },
        },
    },
}
