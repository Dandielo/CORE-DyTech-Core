dytech:new_extend
{
    -- Compressor recipes
    {
        type = "recipe",
        name = "compressor",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            { "iron-plate", 100 },
            { "electronic-circuit", 25 },
            { "pipe", 2 },
            { "frame-1", 1 },
        },
        result = "compressor",
        
        -- dytech fields
        optional = true,
        packname = "gems"
    },
}