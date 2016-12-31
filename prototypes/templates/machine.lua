dytech:template
{
    {
        name = "machine",

        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        fast_replaceable_group = "assembling-machine",

        -- Interactions 
        minable = { 
            hardness = 0.2, 
            mining_time = 0.5, 
            -- result = "" 
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
    {
        name = "machine-mk1",
        templates = { "energy" },
        
        max_health = Health.Tier2,
        resistances = Resistances.Tier1,
        
        ingredient_count = 2,
        crafting_speed = 1,

        -- Modules
        module_specification = {
            module_slots = 2
        },
    },
    {
        name = "machine-mk2",
        templates = { "energy" },

        max_health = Health.Tier3,
        resistances = Resistances.Tier2,
        
        ingredient_count = 2,
        crafting_speed = 1,

        -- Modules
        module_specification = {
            module_slots = 3
        },
    },
    {
        name = "machine-mk3",
        templates = { "energy" },

        max_health = Health.Tier4,
        resistances = Resistances.Tier3,

        ingredient_count = 2,
        crafting_speed = 1,

        -- Modules
        module_specification = {
            module_slots = 4
        },
    },
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

-- dytech:template
-- {
--     {
--         templates = { "machine", "machine-mk1", "machine-big" },

--         -- Entity values
--         name = "big-machine-mk1",
--     },
--     {
--         templates = { "machine", "machine-mk2", "machine-big" },

--         -- Entity values
--         name = "big-machine-mk2",
--     },
--     {
--         templates = { "machine", "machine-mk3", "machine-big" },

--         -- Entity values
--         name = "big-machine-mk3",
--     }
-- }
