dytech:template
{
    -- Compressor template 
	{
		name = "compressor",
        icon = "__CORE-DyTech-Core__/graphics/machines/dytech-compressor-icon.png",

        -- A Compressor may have only 2 ingredients
        ingredient_count = 2,

        -- Fluid boxes
        fluid_boxes =
        {
            {
                production_type = "input",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = -1,
                pipe_connections = 
                {
                    { 
                        type = "input", 
                        position = { 0, -2 } 
                    }
                }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = 1,
                pipe_connections = 
                {
                    { 
                        type = "output", 
                        position = { 0, 2 } 
                    }
                }
            },
            off_when_no_fluid_recipe = true
        },

        -- Animations 
        animation =
        {
            filename = "__CORE-DyTech-Core__/graphics/machines/dytech-compressor-animation.png",
            priority = "high",
            width = 100,
            height = 120,
            frame_count = 13,
            line_length = 13,
            --shift = {0.5, -0.2}
        },
	},

    -- Sawmill template 
    {
        name = "sawmill",
        icon = "__CORE-DyTech-Core__/graphics/machines/centrifuge-icon.png",
        
        -- A sawmill may have up to 15 ingredients!?
        ingredient_count = 15,

        -- Fluid boxes
        fluid_boxes =
        {
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 100,
                base_level = 1,
                pipe_connections = 
                {
                    { 
                        type = "output", 
                        position = { 0, -2 } 
                    }
                }
            },
            {
                production_type = "output",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 100,
                base_level = 1,
                pipe_connections = 
                {
                    { 
                        type = "output", 
                        position = { 0, 2 } 
                    }
                }
            },
            {
                production_type = "input",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 100,
                base_level = -1,
                pipe_connections = 
                {
                    { 
                        type = "input", 
                        position = { -2, 0 } 
                    }
                }
            },
            {
                production_type = "input",
                pipe_picture = assembler3pipepictures(),
                pipe_covers = pipecoverspictures(),
                base_area = 100,
                base_level = -1,
                pipe_connections = 
                {
                    { 
                        type = "input", 
                        position = { 2, 0 } 
                    }
                }
            },
            off_when_no_fluid_recipe = true
        },

        -- Animations 
        animation =
        {
            filename = "__CORE-DyTech-Core__/graphics/machines/centrifuge.png",
            priority = "high",
            width = 119,
            height = 99,
            frame_count = 48,
            line_length = 8,
            animation_speed = 0.64,
            shift = { 0.21875, 0.05 }
        },
    },
}
