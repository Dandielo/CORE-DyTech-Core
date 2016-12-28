require "util"
require "scripts/helpers"

-- The treefarm mod 'object'
local treefarm = { }

-- Treefarm default seeds
function treefarm.seeds()
    local seeds = initialize_table({}, {
        -- Rubber tree seed
        rubber_tree = {
            -- The tree name and states 
            name = "RubberTree",
            states = { 
                "rubber-seed", 
                "small-rubber-tree", 
                "medium-rubber-tree",
                "mature-rubber-tree",
            },

            -- The output
            output = { "resin", 3 },

            -- Growing efficiency factors
            efficiency = { 
                ["grass"]           = 1.0,
                ["grass-medium"]    = 1.5,
                ["grass-dry"]       = 0.75,
                ["dirt"]            = 1.25,
                ["dirt-dark"]       = 1.25,
                ["hills"]           = 0.8,
                ["sand"]            = 0.25,
                ["sand-dark"]       = 0.25,
                ["other"]           = 0.0 -- maybe just ommit this as it will be by default set anyway?
            },

            growing_time = 5925,
            growing_delta = 3555,
            fertilizer_boost = 1.45,
        },

        -- Sulfur tree seed
        sulfur_tree = {
            -- The tree name and states 
            name = "SulfurTree",
            states = { 
                "sulfur-seed", 
                "small-sulfur-tree", 
                "medium-sulfur-tree",
                "mature-sulfur-tree",
            },

            -- The output
            output = { "sulfur-wood", 4 },

            -- Growing efficiency factors
            efficiency = { 
                ["grass"]           = 0.75,
                ["grass-medium"]    = 0.5,
                ["grass-dry"]       = 1.5,
                ["dirt"]            = 1.0,
                ["dirt-dark"]       = 1.0,
                ["hills"]           = 1.25,
                ["sand"]            = 0.25,
                ["sand-dark"]       = 0.25,
                ["other"]           = 0.0 -- maybe just ommit this as it will be by default set anyway?
            },

            growing_time = 9000,
            growing_delta = 1500,
            fertilizer_boost = 1.45,
        },
    })

    -- return the seeds
    return seeds
end

function treefarm.init()
    --
    -- Initialize the treefarm mini-mod if needed
    initialize_table(global, 
    {
        treefarm = { 
            -- Save the treefarm seeds
            seeds = { },

            -- Save which seeds are growing
            growing = { },

            -- Save player specific data
            player_data = { },
        },
    })

    --
    -- Initialize treefarm helper variables (seems to be an overkill, but i think its better to be consistent)
    initialize_table(treefarm, {
        -- Helps a lot during the 'on_tick' event
        seed_from_state = { },

        -- Holds list functions
        list = {  }
    })

    --
    -- Create the list functions 
    treefarm.list.pop_front = function(list)
        return table.remove(list, 1)
    end

    treefarm.list.insert = function(list, entry)
        if #list == 0 then
            table.insert(list, entry)
        else 
            for i = #list, 1, -1 do 
                if not (list[i].update_tick > entry.update_tick) then
                    table.insert(list, i + 1, entry)
                    return
                end
            end
            table.insert(list, 1, entry)
        end
    end

    --
    -- Load seed states from the global table
    for _1, seed in pairs(global.treefarm.seeds) do
        for _2, state_name in pairs(seed.states) do
            treefarm.seed_from_state[state_name] = seed
        end
    end
end

function treefarm.add_seed(seed)
    -- Make a deepcopy so we dont change the original table
    seed = table.deepcopy(seed)

    -- Adding a seed is a type of initialization (we try to do it only if needed)
    initialize_table(global.treefarm.seeds, {
        [seed.name] = {
            -- Required fields [states]
            states = seed.states,

            -- Optional fields
            output = initialize_table(seed.output or { }, {
                [1] = seed.name,
                [2] = 4
            }),

            efficiency = initialize_table(seed.efficiency or { }, {
                ["grass"]           = 1.0,
                ["grass-medium"]    = 1.0,
                ["grass-dry"]       = 0.75,
                ["dirt"]            = 1.0,
                ["dirt-dark"]       = 1.0,
                ["hills"]           = 0.75,
                ["sand"]            = 0.5,
                ["sand-dark"]       = 0.5,
                ["other"]           = 0.0
            }),

            growing_time = seed.growing_time or 7500, -- In ticks (avg tick ~= 16.66ms aka. 60ups) => 16.33 * 7500 == 125,000ms ~= 125s (2min 5s)
            growing_delta = seed.growing_delta or 1500, -- In ticks (avg tick ~= 16.66ms aka. 60ups) => 16.33 * 1500 == 125,000ms ~= 25s
            fertilizer_boost = seed.fertilizer_boost or 1.45 ,
        }
    })

    -- Add (state, seed) pairs to a helper table
    for _, state_name in pairs(seed.states) do
        treefarm.seed_from_state[state_name] = global.treefarm.seeds[seed.name]
    end
end

function treefarm.calculate_efficiency(seed_proto, entity, fertilizer_applied)
    -- Get the tilename where the seed was planted
    local current_tilename = game.surfaces.nauvis.get_tile(entity.position.x, entity.position.y).name

    -- Check if efficiency is set for this tile
    if not seed_proto.efficiency[current_tilename] then
        return seed_proto.efficiency.other

    else
        -- Return effciency and fertilizer_boost if any is applied
        return seed_proto.efficiency[current_tilename] + (fertilizer_applied and seed_proto.fertilizer_boost or 0)
    end
end

function treefarm.remove_seed(name)
    global.treefarm.seeds[name] = nil
end

function treefarm.get_seed(name)
    return global.treefarm.seeds[name]
end

-- 
-- Treefarm logic 
function treefarm.on_tick(event)
    local growing = global.treefarm.growing

    -- Update growing trees 
    while growing[1] and event.tick >= growing[1].update_tick do

        -- Pop the first tree entry
        local old_tree = treefarm.list.pop_front(growing)
        local old_tree_entity = old_tree.entity


        -- check if the tree is valid
        if old_tree_entity.valid then

            -- get the seed prototype from the entity
            local new_state = old_tree.state + 1
            local seed_proto = treefarm.seed_from_state[old_tree_entity.name]

            -- Check if this state exists
            if seed_proto.states[new_state] then

                -- Create a new entity and destroy the old one
                local new_entity = game.surfaces.nauvis.create_entity { 
                    name = seed_proto.states[new_state], -- the entity name 
                    position = old_tree_entity.position
                }
                old_tree_entity.destroy()

                -- Calculate the next update 
                local next_update_tick = (seed_proto.growing_time + math.random(seed_proto.growing_delta)) / old_tree.efficiency
                local new_entry = {
                    state = new_state,
                    entity = new_entity,
                    efficiency = old_tree.efficiency,
                    update_tick = event.tick + next_update_tick
                }

                -- Find the node where we can fit in
                treefarm.list.insert(growing, new_entry)
            end
        end
    end
end

function treefarm.on_built_entity(event)
    -- Check we created an entity
    if event.created_entity.type == "tree" then

        -- get the seed prototype from the entity
        local seed_proto = treefarm.seed_from_state[event.created_entity.name]

        -- If we got a seed prototype just carry on with the script
        if seed_proto then
            local efficiency = treefarm.calculate_efficiency(seed_proto, event.created_entity, false)
            local update_tick = (seed_proto.growing_time + math.random(seed_proto.growing_delta)) / efficiency
        
            local new_entry = {
                state = 1,
                entity = event.created_entity,
                efficiency = efficiency,
                update_tick = event.tick + update_tick
            }

            -- Find the node where we can fit in
            treefarm.list.insert(global.treefarm.growing, new_entry)
        end
    end
end

return treefarm
