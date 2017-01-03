dytech:extend
{
    {
        templates = { "science-red", "science-green", "science-blue" },
        icon = "__CORE-DyTech-Core__/graphics/intermediates/tech/advanced-cables.png",

        name = "advanced-cables",
        type = "technology",
        prerequisites = { "advanced-electronics-2" }, -- {"aluminium-processing","tin-processing","lava-smelting-04"} -- metallurgy
        unit = {
            time = 100,
            count = 150,
        }
    },
    {
        templates = { "science-red", "science-green", "science-blue" },
        icon = "__CORE-DyTech-Core__/graphics/intermediates/tech/advanced-processing-unit.png",

        name = "advanced-processing-unit",
        type = "technology",
        prerequisites = { "advanced-cables" },
        unit = {
            time = 100,
            count = 475,
        }
    },
    {
        templates = { "science-red", "science-green", "science-blue" },
        icon = "__CORE-DyTech-Core__/graphics/intermediates/tech/logic-diamond-processor.png",

        name = "logic-diamond-processor",
        type = "technology",
        prerequisites = { "advanced-processing-unit" },
        unit = {
            time = 150,
            count = 600,
        }
    }
}

dytech:intermediate
{
    {
        name = "mixed-wires",
        subgroup = "wires",
        order = "991",

        templates = 
        {
            { "item" },
            { 
                template = "recipe",
                energy_required = 0.1,
                ingredients = 
                {
                    { "red-wire", 1 },
                    { "green-wire", 1 },
                    -- { "aluminium-wire", 1 }, -- metallurgy
                    -- { "electrum-wire", 1 } -- metallurgy
                }
            },
            { 
                template = "tech-add",
                name = "advanced-cables"
            }
        }
    },
    {
        name = "bundled-wire",
        subgroup = "wires",
        order = "992",

        templates = 
        {
            { "item" },
            {
                template = "recipe",
                productivity = true,

                energy_required = 5,
                ingredients = 
                {
                    { "mixed-wires", 1 },
                    { "rubber", 2 },
                    -- { "tin-plate", 1 } -- metallurgy
                }
            },
            { 
                template = "tech-add",
                name = "advanced-cables"
            }
        }
    },
    {
        name = "advanced-processing-unit",
        subgroup = "circuitry",
        order = "4",

        templates = 
        {
            { "item" },
            {
                template = "recipe",
                productivity = true,

                energy_required = 30,
                ingredients = 
                {
                    { "bundled-wire", 5 },
                    { "processing-unit", 5 },
                }
            },
            { 
                template = "tech-add",
                name = "advanced-processing-unit"
            }
        }
    },
    {
        name = "logic-diamond",
        subgroup = "circuitry",
        order = "5",

        templates = 
        {
            { "item" },
            {
                template = "recipe",
                productivity = true,
                category = "crafting-with-fluid",

                energy_required = 30,
                ingredients = 
                {
                    { 
                        type = "item",
                        name = "compressed-diamond",
                        amount = 1 
                    },
                    { 
                        type = "fluid", 
                        name = "sulfuric-acid", 
                        amount = 15
                    },
                }
            },
            { 
                template = "tech-add",
                name = "logic-diamond-processor"
            }
        }
    },
    {
        name = "logic-diamond-processor",
        subgroup = "circuitry",
        order = "6",

        templates = 
        {
            { "item" },
            {
                template = "recipe",
                productivity = true,
                category = "crafting-with-fluid",

                energy_required = 30,
                ingredients = 
                {
                    {
                        type = "item",
                        name = "advanced-processing-unit",
                        amount = 1,
                    },
                    { 
                        type = "item",
                        name = "logic-diamond",
                        amount = 1 
                    },
                    { 
                        type = "fluid", 
                        name = "lubricant", 
                        amount = 10
                    },
                }
            },
            { 
                template = "tech-add",
                name = "logic-diamond-processor"
            }
        }
    }
}
