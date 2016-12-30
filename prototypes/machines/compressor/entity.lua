require "prototypes.internal-config"

data:extend
{
    {
        type = "assembling-machine",
        name = "compressor",
        icon = "__CORE-DyTech-Core__/graphics/machines/dytech-compressor-icon.png",
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        
        -- Entity values
        max_health = Health.Tier4,
        corpse = "big-remnants",
        resistances = Resistances.Tier3,
        fast_replaceable_group = "assembling-machine",

        -- Interactions 
        minable = { 
            hardness = 0.2, 
            mining_time = 0.5, 
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

        -- Sounds
        open_sound = { 
            filename = "__base__/sound/machine-open.ogg", volume = 0.85 
        },
        close_sound = { 
            filename = "__base__/sound/machine-close.ogg", volume = 0.75 
        },
        vehicle_impact_sound = { 
            filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 
        },
        working_sound =
        {
            sound = 
            {
                {
                    filename = "__base__/sound/assembling-machine-t3-1.ogg",
                    volume = 0.8
                },
                {
                    filename = "__base__/sound/assembling-machine-t3-2.ogg",
                    volume = 0.8
                },
            },
            idle_sound = { 
                filename = "__base__/sound/idle1.ogg", volume = 0.6 
            },
            apparent_volume = 1.5,
        },

        -- AABB
        collision_box = {
            { -1.2, -1.2 }, 
            {  1.2,  1.2 }
        },
        selection_box = {
            { -1.5, -1.5 }, 
            {  1.5,  1.5 }
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
        crafting_speed = 1,
        ingredient_count = 2,

        -- Energy
        energy_usage = "5000kW",
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.07 / 7.5
        },

        -- Modules
        module_specification = {
            module_slots = 4
        },
        allowed_effects = { "consumption", "speed", "pollution" }
    },
}
