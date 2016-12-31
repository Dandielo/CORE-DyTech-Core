dytech:template
{
    -- Defines a assembling-machine template 
    {
        name = "machine",

        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        fast_replaceable_group = "assembling-machine",

        -- Interactions 
        minable = { 
            hardness = 0.2, 
            mining_time = 0.5, 
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

        -- Modules
        allowed_effects = { "consumption", "speed", "pollution" },
    },

    -- Defines default machine tier1 values
    {
        name = "machine-mk1",

        max_health = Health.Tier2,
        resistances = Resistances.Tier1,
        
        ingredient_count = 2,
        crafting_speed = 0.5,

        -- Modules
        module_specification = {
            module_slots = 2
        },
    },

    -- Defines default machine tier1 values
    {
        name = "machine-mk2",

        max_health = Health.Tier3,
        resistances = Resistances.Tier2,
        
        ingredient_count = 3,
        crafting_speed = 0.75,

        -- Modules
        module_specification = {
            module_slots = 3
        },
    },

    -- Defines default machine tier1 values
    {
        name = "machine-mk3",

        max_health = Health.Tier4,
        resistances = Resistances.Tier3,

        ingredient_count = 5,
        crafting_speed = 1,

        -- Modules
        module_specification = {
            module_slots = 5
        },
    },

    -- Defines big machines
    {
        name = "machine-big",
        corpse = "big-remnants",

        -- AABB
        collision_box = {
            { -1.2, -1.2 }, 
            {  1.2,  1.2 }
        },
        selection_box = {
            { -1.5, -1.5 }, 
            {  1.5,  1.5 }
        },
    }
}
