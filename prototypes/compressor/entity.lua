dytech:new_extend
{
    {
        templates = { "machine", "machine-mk3", "machine-big" },

		name = "compressor",
        type = "assembling-machine",
        icon = "__dytech-core__/graphics/machines/dytech-compressor-icon.png",

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
            filename = "__dytech-core__/graphics/machines/dytech-compressor-animation.png",
            priority = "high",
            width = 100,
            height = 120,
            frame_count = 13,
            line_length = 13,
            --shift = {0.5, -0.2}
        },

        -- Energy usage
        energy_usage = "5000kW",
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.07 / 7.5
        },

        -- Interactions
        minable = { 
            result = "compressor"
        },

        -- Crafting
        crafting_categories = { "polishing" },

        -- dytech fields
        optional = true,
        packname = "gems"
    },
}
