data:extend
{ -- TODO: This files needs to get some love because of the weird way we are defining tree data here
    {
        -- Basics 
        type = "tree",
        name = "rubber-seed",
        icon = "__CORE-DyTech-Core__/graphics/rubber-tree/stage-1.png",
        order = "b-b-g",
        flags = { "placeable-neutral", "breaths-air" },
        emissions_per_tick = -0.0001,
        max_health = 10,

        -- Interactions 
        minable = {
            count = 1,
            mining_time = 0.1,
            mining_particle = "wooden-particle",
            result = "rubber-seed"
        },

        -- AABB
        collision_box = { 
            { -0.01, -0.01 }, 
            {  0.01,  0.01 }
        },
        selection_box = {
            { -0.1, -0.1 }, 
            {  0.1,  0.1 }
        },
        drawing_box = {
            { 0.0, 0.0 }, 
            { 1.0, 1.0 }
        },

        -- Pictures!
        pictures =
        {
            {
                filename = "__CORE-DyTech-Core__/graphics/rubber-tree/stage-1.png",
                priority = "extra-high",
                width = 32,
                height = 32,
                shift = { 0.0, 0.0 }
            }
        }
    },
    {
        type = "tree",
        name = "small-rubber-tree",
        icon = "__CORE-DyTech-Core__/graphics/rubber-tree/icon.png",
        order = "b-b-g",
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        emissions_per_tick = -0.01,
        max_health = 20,

        -- Interactions 
        minable =
        {
            count = 2,
            mining_time = 0.3,
            mining_particle = "wooden-particle",
            result = "rubber-seed"
        },

        -- AABB
        collision_box = {
            { -0.2, -0.2 }, 
            {  0.2,  0.2 }
        },
        selection_box = {
            { -0.2, -0.55 }, 
            {  0.2,  0.2 }
        },
        drawing_box = {
            { -0.2, -0.7 }, 
            {  0.2,  0.2 }
        },

        -- Pictures!
        pictures =
        {
            {
                filename = "__CORE-DyTech-Core__/graphics/rubber-tree/stage-2.png",
                priority = "extra-high",
                -- TODO: This math comes from? (needs investigation)
                width = math.floor(155 / 4),
                height = math.floor(118 / 4),
                shift = { 1.1 / 4, -1 / 4 }
            }
        } 
    },
    {
        type = "tree",
        name = "medium-rubber-tree",
        icon = "__CORE-DyTech-Core__/graphics/rubber-tree/icon.png",
        order = "b-b-g",
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        emissions_per_tick = -0.005, -- How the yuck is this lower than the smaller version of this tree? 
        max_health = math.floor(50 * 0.75), 

        -- Interactions 
        minable =
        {
            count = 3,
            mining_time = 0.6,
            mining_particle = "wooden-particle",
            result = "rubber-seed"
        },

        -- AABB
        collision_box = {
            { -0.7 * 0.75, -0.8 * 0.75 }, 
            {  0.7 * 0.75,  0.8 * 0.75 }
        },
        selection_box = {
            { -0.8 * 0.75, -2.2 * 0.75 }, 
            {  0.8 * 0.75,  0.8 * 0.75 }
        },
        drawing_box = {
            { -0.8 * 0.75, -2.8 * 0.75 }, 
            {  0.8 * 0.75,  0.8 * 0.75 }
        },

        -- Pictures!
        pictures =
        {
            {
                filename = "__CORE-DyTech-Core__/graphics/rubber-tree/stage-3.png",
                priority = "extra-high",
                -- Are we dividing or multiplying? sticking to the method would help to understand this...
                width = math.floor(155 * 0.75),
                height = math.floor(118 * 0.75),
                shift = { 1.1 * 0.75, -1 * 0.75 }
            }
        }
    },
    {
        type = "tree",
        name = "mature-rubber-tree",
        icon = "__CORE-DyTech-Core__/graphics/rubber-tree/icon.png",
        order = "b-b-h",
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        emissions_per_tick = -0.002, -- This is still smaller than the second stage of this tree
        max_health = 50, -- Back to not using math at all, great!

        -- Interactions 
        minable =
        {
            count = 3,
            mining_time = 1,
            mining_particle = "wooden-particle",
            result = "resin"
        },

        -- AABB
        collision_box = {
            { -0.7, -0.8 }, 
            {  0.7,  0.8 }
        },
        selection_box = {
            { -0.8, -2.2 }, 
            {  0.8,  0.8 }
        },
        drawing_box = {
            { -0.8, -2.8 }, 
            {  0.8,  0.8 }
        },

        -- Pictures!
        pictures =
        {
            {
                filename = "__CORE-DyTech-Core__/graphics/rubber-tree/stage-4.png",
                priority = "extra-high",
                -- Math dissapeared again, YAY!?
                width = 155,
                height = 118,
                shift = { 1.1, -1 }
            }
        }
    }
}
