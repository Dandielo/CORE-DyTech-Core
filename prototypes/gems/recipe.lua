dytech:new_extend
{
    {
        type = "recipe",
        name = "sort-gem-ore",
        energy_required = 1,
        enabled = false,
        
        ingredients =
        {
            { "gem-ore", 1 },
        },

        results =
        {
            {
                type = "item", 
                name = "raw-ruby", 
                amount = 1, 
                probability = 0.6
            },
            {
                type = "item", 
                name = "raw-sapphire", 
                amount = 1, 
                probability = 0.4
            },
            {
                type = "item", 
                name = "raw-emerald", 
                amount = 1, 
                probability = 0.3
            },
            {
                type = "item", 
                name = "raw-topaz", 
                amount = 1, 
                probability = 0.2
            },
            {
                type = "item", 
                name = "raw-diamond", 
                amount = 1, 
                probability = 0.1
            },
        },

        subgroup = "dytech-gem-crystal",
        icon = "__dytech-core__/graphics/gems/crystal.png",
        order = "a-0",
    }, 
}
