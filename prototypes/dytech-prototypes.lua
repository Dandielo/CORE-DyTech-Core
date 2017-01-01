require "scripts.helpers"

-- 
--- The global dytech prototype handler (allows for easier adding and changing of existing prototype data)
dytech = { }
dytech.config_values = { }
dytech.templates = { }
dytech.templates.raw = { }
dytech.templates.resolved = { }

-- dytech items, recipes and groups
dytech.raw = { }
dytech.raw.tile = { }
dytech.raw.item = { }
dytech.raw.fluid = { }
dytech.raw.recipe = { }
dytech.raw.technology = { }
dytech.raw["assembling-machine"] = { }


-- dytech config functions to override and create config values
function dytech.config(dytech, values)
    dytech.config_values = initialize_table(values, dytech.config_values)
end

-- creates a new template for new dytech prototypes
function dytech.template(dytech, values) 
    for _, template in ipairs(values) do

        -- Save the template to resolve it later
        dytech.templates.raw[template.name] = initialize_table(template, dytech.templates.raw[template.name] or { })

        -- Do we need to forget about the template name?
        template.name = nil 
    end
end

function dytech.itemplate(dytech, values) 
    for _, template in ipairs(values) do

        -- Save the template to resolve it later
        dytech.templates.raw[template.tname] = initialize_table(template, dytech.templates.raw[template.tname] or { })

        -- Do we need to forget about the template name?
        template.tname = nil 
    end
end

function dytech.intermediate(dytech, values)
    local results = { }

    -- For each intermediate 
    for _, inter in ipairs(values) do

        -- Get the templates and remove them from the base table
        local templates = inter.templates
        inter.templates = nil

        -- Create a new prototype with each template
        for _, base_table in pairs(templates) do
            local template_name = base_table.template or base_table[1]
            assert(dytech.templates.resolved[template_name] ~= nil, "Unknown dytech prototype template: '" .. template_name .. "'")

            -- Remove values we dont want
            base_table.template = nil
            base_table[1] = nil

            -- base_table.subgroup = base_table.subgroup or inter.subgroup

            -- Create a prototype from a given template
            local result = initialize_table_with_replacements(base_table, dytech.templates.resolved[template_name], {
                name = base_table.name or inter.name,
                subgroup = base_table.subgroup or inter.subgroup,
                inter_name = inter.name,
                __next__ = "{__next__}", -- we want this to be preserved into a later stage
            })

            -- set the name if none is present
            result.name = result.name or inter.name

            -- insert the resolved template to the results list
            table.insert(results, result)
        end
    end

    -- Apply all results
    dytech:extend(results)
end

-- resolves all templates 
function dytech.resolve_templates(dytech)
    for name, template in pairs(dytech.templates.raw) do
        -- Only resolve a template if it needs to be resolved
        if not dytech.templates.resolved[name] then
            dytech:resolve_template(name, template)
        end
    end
end

function dytech.resolve_template(dytech, name, template)
    local merged = { }

    if template.templates then
        -- for each template used
        for i = #template.templates, 1, -1 do -- We are applying from right to left (to make sure that the most specific values are taken first)
            local template_name = template.templates[i]

            -- We can resolve sub templates 
            if not dytech.templates.resolved[template_name] then
                assert(dytech.templates.raw[template_name] ~= nil, "Unknown dytech prototype template: '" .. template_name .. "'")
                dytech:resolve_template(template_name, dytech.templates.raw[template_name])
            end

            -- Apply each template
            initialize_table(merged, dytech.templates.resolved[template_name])
        end
    end

    -- Merge templates later try to merge the last version of the prototype (if any exists)
    dytech.templates.resolved[name] = initialize_table(template, merged)
    template.templates = nil
end



-- creates a new prototype entry (may use dytech templates) or updates an existing prototype
function dytech.extend(dytech, values)
    for _, proto in pairs(values) do

        local type_values = dytech.raw[proto.type]
        assert(type_values ~= nil, "Unknown data type: '" .. proto.type .. "'")

        -- Apply all listed templates
        if proto.templates then
            local merged = { }

            -- for each template used
            for i = #proto.templates, 1, -1 do -- We are applying from right to left (to make sure that the most specific values are taken first)
                local template_name = proto.templates[i]
                assert(dytech.templates.resolved[template_name] ~= nil, "Unknown dytech prototype template: '" .. template_name .. "'")

                -- Apply each template
                initialize_table(merged, dytech.templates.resolved[template_name])
            end

            -- Merge templates later try to merge the last version of the prototype (if any exists)
            type_values[proto.name] = initialize_table(initialize_table(proto, merged), type_values[proto.name] or { })
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
