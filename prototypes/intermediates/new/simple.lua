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
                enabled = false,
                ingredients = 
                { 
                    { "steel-plate", 2 }
                },
            },
            { 
                template = "tech-add",
                name = "steel-processing"
            }
        }
    }
}
