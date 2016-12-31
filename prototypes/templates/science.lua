dytech:template
{
	-- Very fast science research
	{
		name = "science-vfast", 
		unit = {
            time = 10,
		}
	},

	-- Fast science research
	{
		name = "science-fast", 
		unit = {
            time = 20,
		}
	},

	-- Normal science research
	{
		name = "science-normal", 
		unit = {
            time = 30,
		}
	},

	-- Long science research
	{
		name = "science-long", 
		unit = {
            time = 60,
		}
	},

	-- Very long science research
	{
		name = "science-vlong", 
		unit = {
            time = 60,
		}
	},
}

dytech:template
{
	{
		name = "science-red",
		unit = {
            ingredients = 
            {
                [1] = { "science-pack-1", 1 },
            },
		}
	},
	{
		name = "science-green",
		unit = {
            ingredients = 
            {
                [2] = { "science-pack-2", 1 },
            },
		}
	},
	{
		name = "science-blue",
		unit = {
            ingredients = 
            {
                [3] = { "science-pack-3", 1 },
            },
		}
	},
	{
		name = "science-alien",
		unit = {
            ingredients = 
            {
                [4] = { "alien-science-pack", 1 },
            },
		}
	}
}
