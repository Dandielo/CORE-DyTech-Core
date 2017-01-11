dytech:new_extend
{
    -- Compressor items
    {
        type = "item",
        name = "compressor",
        icon = "__dytech-core__/graphics/machines/dytech-compressor-icon.png",
        flags = { "goes-to-quickbar" },
        subgroup = "dytech-machines-cleaning",
        order = "compressor",
        place_result = "compressor",
        stack_size = 50,

        -- dytech fields
        optional = true,
        packname = "gems"
    },
}
