

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
			initialize_table(set_if_null(target, key, { }), value)
		else
			-- set the values if needed
			set_if_null(target, key, value)
		end
	end

	-- return the target table
	return target
end

