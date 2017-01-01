-- 
-- Helps replacing string values in-place
function string_replace(str, replacements)
    if type(str) == "string" then
        return str:gsub("%{([a-zA-Z0-9_-]+)%}", function(token)
            return replacements[token]
        end)
    else 
        return str
    end
end

function special_replace(str, replacements, table)
    if str == "{__next__}" then
        return #table + 1
    end
    return string_replace(str, replacements)
end

--
-- Set a table field with the given value 
function set_if_null(table, field, value) 
    if not table[field] then 
        table[field] = value
    end

    -- return the field
    return table[field]
end

-- 
-- Initializing a table
function initialize_table(target, source)
    -- We try to set each key and value to te given table from the second table if not set
    for key, value in pairs(source) do

        -- We are going to do this recursive for subtables 
        if type(value) == "table" then
            -- initialize the subtable or creat a new one and initialize that
            initialize_table(set_if_null(target, special_replace(key, { }, target), { }), value)
        else
            -- set the values if needed
            set_if_null(target, key, value)
        end
    end

    -- return the target table
    return target
end

-- 
-- Initializing a table (with string replacements)
function initialize_table_with_replacements(target, source, replacements)
    -- We try to set each key and value to te given table from the second table if not set
    for key, value in pairs(source) do

        -- We are going to do this recursive for subtables 
        if type(value) == "table" then
            -- initialize the subtable or creat a new one and initialize that
            initialize_table_with_replacements(set_if_null(target, string_replace(key, replacements), { }), value, replacements)
        elseif type(value) == "string" then
            -- set the values if needed
            set_if_null(target, key, string_replace(value, replacements))
        else
            -- set the values if needed
            set_if_null(target, key, value)
        end
    end

    -- return the target table
    return target
end
