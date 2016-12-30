dytech:extend 
{
    {
        type = "fluid",
        name = "water",
        max_temperature = 80,
        pressure_to_speed_ratio = 0.6,
        flow_to_energy_ratio = 0.885,
        icon = "__CORE-DyTech-Core__/graphics/fluid/dirty-water.png"
    }
}

data:extend
{
    {
        type = "fluid",
        name = "clean-water",
        default_temperature = 15,
        max_temperature = 100,
        heat_capacity = "2KJ",
        base_color = {
            r = 0, g = 0.34, b = 0.6
        },
        flow_color = {
            r = 0.7, g = 0.7, b = 0.7
        },
        icon = "__base__/graphics/icons/fluid/water.png",
        
        order = "clean-water",
        subgroup = "metallurgy-fluid-intermediate",

        pressure_to_speed_ratio = 0.6,
        flow_to_energy_ratio = 0.885,
    },
}
