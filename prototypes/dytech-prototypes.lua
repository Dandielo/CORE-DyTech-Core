require "scripts.helpers"

-- 
--- The global dytech prototype handler (allows for easier adding and changing of existing prototype data)
dytech = { }
dytech.config = { }

-- dytech items, recipes and groups
dytech.raw = { }
dytech.raw.items = { }
dytech.raw.fluid = { }
dytech.raw.recipes = { }
dytech.raw.technologies = { }


-- dytech extend function to easily replace existing prototypes
function dytech.extend(dytech, values)
    for _, proto in pairs(values) do
        local type_values = dytech.raw[proto.type]
        assert(type_values ~= nil, "Unknown data type")

        -- Save a new prototype based on the 'registered' prototype 
        type_values[proto.name] = initialize_table(proto, data.raw[proto.type][proto.name])
    end
end

function dytech.apply(dytech)
    -- Copy all 'dytech' prototypes to the 'data' table
    for type, values in pairs(dytech.raw) do
        for name, proto in pairs(values) do
            data.raw[type][name] = proto
        end
    end
end
