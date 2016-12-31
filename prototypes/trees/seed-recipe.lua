data:extend
{ 
    {
        type = "recipe",
        name = "raw-wood-processing",
        icon = "__base__/graphics/icons/raw-wood.png",
        category = "sawmill",
        energy_required = 7.5,
        subgroup = "dytech-intermediates-processing",
        enabled = false,
        ingredients = 
        {
            {
                type = "item", 
                name = "raw-wood", 
                amount = 1
            },
        },
        results = 
        {
            {
                type = "item", 
                name = "wood", 
                amount_min = 3, 
                amount_max = 5, 
                probability = 1
            },
            {
                type = "item", 
                name = "sulfur-seed", 
                amount_min = 1, 
                amount_max = 1, 
                probability = 0.075
            },
            {
                type = "item", 
                name = "rubber-seed", 
                amount_min = 1, 
                amount_max = 2, 
                probability = 0.2
            },
        }
    },
}
