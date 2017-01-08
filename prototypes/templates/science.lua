dytech:resolved_template
{
	-- Very fast science research
	{
		tname = "science-vfast", 
		unit = {
            time = 10,
		}
	},

	-- Fast science research
	{
		tname = "science-fast", 
		unit = {
            time = 20,
		}
	},

	-- Normal science research
	{
		tname = "science-normal", 
		unit = {
            time = 30,
		}
	},

	-- Long science research
	{
		tname = "science-long", 
		unit = {
            time = 60,
		}
	},

	-- Very long science research
	{
		tname = "science-vlong", 
		unit = {
            time = 120,
		}
	},
}

dytech:resolved_template
{
	{
		tname = "science-red",
		unit = {
            ingredients = 
            {
                [1] = { "science-pack-1", 1 },
            },
		}
	},
	{
		tname = "science-green",
		unit = {
            ingredients = 
            {
                [2] = { "science-pack-2", 1 },
            },
		}
	},
	{
		tname = "science-blue",
		unit = {
            ingredients = 
            {
                [3] = { "science-pack-3", 1 },
            },
		}
	},
	{
		tname = "science-alien",
		unit = {
            ingredients = 
            {
                [4] = { "alien-science-pack", 1 },
            },
		}
	}
}
