dytech:extend
{
    {
        type = "tile",
        name = "sand",
        needs_correction = false,
        walking_speed_modifier = 0.9,

        -- Interactions
        minable = {
            hardness = 0.1,
            mining_time = 0.25,
            result = "sand",
        },
        mined_sound = {
            filename = "__base__/sound/deconstruct-bricks.ogg"
        },
    }
}

data:extend
{
    {
        type = "tile",
        name = "sandbag",
        needs_correction = false,
        collision_mask = { "ground-tile" },
        layer = 101,

        -- Speed modifiers
        walking_speed_modifier = 1.1,
        vehicle_friction_modifier = 1.1,
        
        -- Interactions
        minable = {
            hardness = 0.2, 
            mining_time = 0.5, 
            result = "sandbag",
        },
        mined_sound = { 
            filename = "__base__/sound/deconstruct-bricks.ogg" ,
        },

        -- Picture variants
        variants =
        {
            main =
            {
                {
                    picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/1.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/2.png",
                    count = 4,
                    size = 2,
                    probability = 0.39,
                },
                {
                    picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/4.png",
                    count = 4,
                    size = 4,
                    probability = 1,
                },
            },
            inner_corner =
            {
                picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/u.png",
                count = 8
            },
            o_transition =
            {
                picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/o.png",
                count = 1
            }
        },

        -- Sounds
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },

        -- Map values?
        map_color = {
            r = 139, 
            g = 104, 
            b = 39
        },
        ageing = 0,
    },
    {
        type = "tile",
        name = "quick-sand",
        needs_correction = false,
        collision_mask = { "ground-tile" },
        layer = 101,

        -- Speed modifiers
        walking_speed_modifier = 0.7,
        vehicle_friction_modifier = 1.1, -- does quicksand accelerate vehicles? 

        -- Interactions
        minable = { 
            hardness = 0.2, 
            mining_time = 0.5, 
            result = "quick-sand"
        },
        mined_sound = { 
            filename = "__base__/sound/deconstruct-bricks.ogg" 
        },

        -- Picture variants
        variants =
        {
            main =
            {
                {
                    picture = "__CORE-DyTech-Core__/graphics/terrain/quick-sand/1.png",
                    count = 16,
                    size = 1
                },
                {
                    picture = "__CORE-DyTech-Core__/graphics/terrain/quick-sand/2.png",
                    count = 16,
                    size = 2,
                    probability = 0.39,
                },
                {
                    picture = "__CORE-DyTech-Core__/graphics/terrain/quick-sand/4.png",
                    count = 4,
                    size = 4,
                    probability = 1,
                },
            },
            inner_corner =
            {
                picture = "__CORE-DyTech-Core__/graphics/terrain/quick-sand/inner-corner.png",
                count = 8
            },
            outer_corner =
            {
                picture = "__CORE-DyTech-Core__/graphics/terrain/quick-sand/outer-corner.png",
                count = 8
            },
            side =
            {
                picture = "__CORE-DyTech-Core__/graphics/terrain/quick-sand/side.png",
                count = 8
            },
            u_transition =
            {
                picture = "__CORE-DyTech-Core__/graphics/terrain/quick-sand/u.png",
                count = 8
            },
            o_transition =
            {
                picture = "__CORE-DyTech-Core__/graphics/terrain/quick-sand/o.png",
                count = 1
            }
        },

        -- Sounds
        walking_sound =
        {
            {
                filename = "__base__/sound/walking/concrete-01.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-02.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-03.ogg",
                volume = 1.2
            },
            {
                filename = "__base__/sound/walking/concrete-04.ogg",
                volume = 1.2
            }
        },

        -- Map values?
        map_color = {
            r = 139, 
            g = 104, 
            b = 39
        },
        ageing = 0,
    },
}
