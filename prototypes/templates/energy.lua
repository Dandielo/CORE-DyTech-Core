dytech:template
{
    {
        name = "energy",

        -- Just define the energy source 
        energy_usage = nil,  -- needs to be defined by inheriting prototypes
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions = 0.07 / 7.5
        },
    }
}
