require "scripts.helpers"

-- 
--- The global dytech prototype handler (allows for easier adding and changing of existing prototype data)
dytech = { }
dytech.config_values = { }

-- dytech items, recipes and groups
dytech.raw = { }
dytech.raw.items = { }
dytech.raw.fluid = { }
dytech.raw.recipes = { }
dytech.raw.technologies = { }


-- dytech config functions to override and create config values
function dytech.config(dytech, values)
    dytech.config_values = initialize_table(values, dytech.config_values)
end

-- dytech extend function to easily replace existing prototypes
function dytech.extend(dytech, values)
    for _, proto in pairs(values) do
        local type_values = dytech.raw[proto.type]
        assert(type_values ~= nil, "Unknown data type")

        -- Save a new prototype based on the 'registered' prototype 
        type_values[proto.name] = initialize_table(proto, type_values[proto.name] or { }) -- allow merging the same prototype with the last saved value
    end
end

function dytech.apply(dytech)
    -- Copy all 'dytech' prototypes to the 'data' table
    for type, values in pairs(dytech.raw) do
        for name, proto in pairs(values) do
            data.raw[type][name] = initialize_table(proto, data.raw[proto.type][proto.name] or { }) -- merge the dytech prototype with the base game type
        end
    end
end
