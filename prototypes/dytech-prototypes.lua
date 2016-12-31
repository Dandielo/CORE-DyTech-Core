require "scripts.helpers"

-- 
--- The global dytech prototype handler (allows for easier adding and changing of existing prototype data)
dytech = { }
dytech.config_values = { }
dytech.templates = { }

-- dytech items, recipes and groups
dytech.raw = { }
dytech.raw.tile = { }
dytech.raw.items = { }
dytech.raw.fluid = { }
dytech.raw.recipes = { }
dytech.raw.technologies = { }
dytech.raw["assembling-machine"] = { }


-- dytech config functions to override and create config values
function dytech.config(dytech, values)
    dytech.config_values = initialize_table(values, dytech.config_values)
end

-- creates a new template for new dytech prototypes
function dytech.template(dytech, values) 
    for _, proto in pairs(values) do

        -- check if the template uses other dytech templates
        if proto.templates then

            -- We can specify more than one template
            local merged = { }

            -- For each template name
            for _, template_name in pairs(proto.templates) do
                -- Check if the given template exists
                assert(dytech.templates[template_name] ~= nil, "Unknown dytech prototype template: '" .. template_name .. "'")

                -- apply the template on the current merged table
                initialize_table(merged, dytech.templates[template_name])
            end

            -- apply merged templates to the template prototype
            dytech.templates[proto.name] = initialize_table(proto, merged)

            -- we dont want the template value to be saved 
            proto.template = nil 

        else 
            dytech.templates[proto.name] = proto

        end

        -- Do we need to forget about the template name?
        proto.name = nil 
    end
end

-- creates a new prototype entry (may use dytech templates) or updates an existing prototype
function dytech.extend(dytech, values)
    for _, proto in pairs(values) do

        local type_values = dytech.raw[proto.type]
        assert(type_values ~= nil, "Unknown data type")

        -- check if the prototype uses a dytech template 
        if proto.template then
            assert(dytech.templates[proto.template] ~= nil, "Unknown dytech prototype template: '" .. proto.template .. "'")
            type_values[proto.name] = initialize_table(proto, dytech.templates[proto.template])

            -- we dont want the template values to be saved
            proto.template = nil 

        else 
            -- Save a new prototype based on the 'registered' prototype 
            type_values[proto.name] = initialize_table(proto, type_values[proto.name] or { }) -- allow merging the same prototype with the last saved value

        end

    end
end

function dytech.apply(dytech)
    -- Copy all 'dytech' prototypes to the 'data' table
    for type, values in pairs(dytech.raw) do
        for name, proto in pairs(values) do
            data.raw[type][name] = initialize_table(proto, data.raw[proto.type][proto.name] or { }) -- merge the dytech prototype with the base game type
        end

        -- Reset dytech prototypes
        dytech.raw[type] = { }
    end
end

require "prototypes.dytech-templates"
