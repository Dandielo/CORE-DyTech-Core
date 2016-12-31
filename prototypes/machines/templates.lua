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
                pipe_picture = dytech_assembler3pipepictures(),
                pipe_covers = dytech_pipecoverspictures(),
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
                pipe_picture = dytech_assembler3pipepictures(),
                pipe_covers = dytech_pipecoverspictures(),
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
        -- ingredient_count = 15, -- lets scrap this value!

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

    -- Greenhouse template 
    {
        name = "greenhouse",
        icon = "__CORE-DyTech-Core__/graphics/machines/greenhouse.png",

        -- A greenhouse may have up to 15 ingredients!?
        -- ingredient_count = 15, -- lets scrap this value!
        ingredient_count = 2,

        -- Fluid boxes
        fluid_boxes =
        {
            {
                production_type = "input",
                pipe_picture = dytech_assembler3pipepictures(),
                pipe_covers = dytech_pipecoverspictures(),
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
                pipe_picture = dytech_assembler3pipepictures(),
                pipe_covers = dytech_pipecoverspictures(),
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
            filename = "__CORE-DyTech-Core__/graphics/machines/greenhouse.png",
            priority = "high",
            width = 113,
            height = 91,
            frame_count = 1,
            shift = { 0.2, 0.15 }
        },
    },


    -- Liquid-handler template
    {
        name = "liquid-handler",
        icon = "__CORE-DyTech-Core__/graphics/machines/liquid-handler.png",

        -- Animations 
        animation =
        {
            north = {
                filename = "__CORE-DyTech-Core__/graphics/machines/liquid-handler-up.png",
                width = 46,
                height = 56,
                frame_count = 1,
                shift = { 0.09375, 0.03125 }
            },
            west = {
                filename = "__CORE-DyTech-Core__/graphics/machines/liquid-handler-left.png",
                width = 56,
                height = 44,
                frame_count = 1,
                shift = { 0.3125, 0.0625 }
            },
            south = {
                filename = "__CORE-DyTech-Core__/graphics/machines/liquid-handler-down.png",
                width = 61,
                height = 58,
                frame_count = 1,
                shift = { 0.421875, -0.125 },
            },
            east = {
                filename = "__CORE-DyTech-Core__/graphics/machines/liquid-handler-right.png",
                width = 51,
                height = 56,
                frame_count = 1,
                shift = { 0.265625, -0.21875 }
            }
        },

        -- Visualizations
        working_visualisations =
        {
            {
                north_position = { 0, 0 },
                east_position = { 0, 0 },
                south_position = { 0, 0 },
                west_position = { 0, 0 },
                north_animation = {
                    filename = "__CORE-DyTech-Core__/graphics/machines/liquid-handler-up.png",
                    width = 46,
                    height = 56,
                    frame_count = 8,
                    shift = { 0.09375, 0.03125 },
                    animation_speed = 0.5,
                    run_mode = "backward"
                },
                west_animation = {
                    filename = "__CORE-DyTech-Core__/graphics/machines/liquid-handler-left.png",
                    width = 56,
                    height = 44,
                    frame_count = 8,
                    shift = { 0.3125, 0.0625 },
                    animation_speed = 0.5,
                    run_mode = "backward"
                },
                south_animation = {
                    filename = "__CORE-DyTech-Core__/graphics/machines/liquid-handler-down.png",
                    width = 61,
                    height = 58,
                    frame_count = 8,
                    shift = { 0.421875, -0.125 },
                    animation_speed = 0.5,
                    run_mode = "backward"
                },
                east_animation = {
                    filename = "__CORE-DyTech-Core__/graphics/machines/liquid-handler-right.png",
                    width = 51,
                    height = 56,
                    frame_count = 8,
                    shift = { 0.265625, -0.21875 },
                    animation_speed = 0.5,
                    run_mode = "backward"
                }
            }
        },

        -- Fluid boxes
        fluid_boxes =
        {
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                base_area = 100,
                base_level = -1,
                pipe_connections = 
                {
                    { 
                        type = "input", 
                        position = { 0, 1 } 
                    }
                }
            },
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                base_level = 100,
                pipe_connections = 
                {
                    { 
                        type = "output",
                        position = { 0, -1 } 
                    }
                },
            },
            -- off_when_no_fluid_recipe = true
        }
    }
}
