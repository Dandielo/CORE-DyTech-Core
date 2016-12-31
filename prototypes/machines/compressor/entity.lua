dytech:extend
{
    {
        templates = { "machine", "machine-mk1", "machine-big", "compressor" },

        type = "assembling-machine",
        name = "compressor", 

        icon = "__CORE-DyTech-Core__/graphics/machines/dytech-compressor-icon.png",
        

        -- Interactions
        minable = { 
            result = "compressor"
        },

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

        -- Crafting
        crafting_categories = { "polishing" },
    },
}
