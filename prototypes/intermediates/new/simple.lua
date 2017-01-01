dytech:intermediate
{
    {
        name = "mininghead-0",
        subgroup = "mining",

        -- Prototype templates (each template create a prototype)
        templates =
        {
            {
                template = "item",
            },
            {
                template = "recipe",
                enabled = true,
                ingredients = 
                { 
                    { "steel-plate", 2 }
                },
            },
        }
    }
}
