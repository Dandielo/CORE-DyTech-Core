function dytech_pipecoverspictures(shifts)
    return {
        north =
        {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
            priority = "extra-high",
            width = 44,
            height = 32,
            shift = (shifts and shifts.north) or { 0, 0 }
        },
        east =
        {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
            priority = "extra-high",
            width = 32,
            height = 32,
            shift = (shifts and shifts.east) or { 0, 0 }
        },
        south =
        {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
            priority = "extra-high",
            width = 46,
            height = 52,
            shift = (shifts and shifts.south) or { 0, 0 }
        },
        west =
        {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
            priority = "extra-high",
            width = 32,
            height = 32,
            shift = (shifts and shifts.west) or { 0, 0 }
        }
    }
end

function dytech_assembler3pipepictures(shifts)
    return {
        north =
        {
            filename = "__base__/graphics/entity/assembling-machine-3/pipe-north.png",
            priority = "extra-high",
            width = 40,
            height = 45,
            shift = (shifts and shifts.north) or { 0.03125, 0.3125 }
        },
        east =
        {
            filename = "__base__/graphics/entity/assembling-machine-3/pipe-east.png",
            priority = "extra-high",
            width = 40,
            height = 45,
            --shift = {-0.78125, 0.15625}
            shift = (shifts and shifts.east) or { -0.53125, 0.15625 }
        },
        south =
        {
            filename = "__base__/graphics/entity/assembling-machine-3/pipe-south.png",
            priority = "extra-high",
            width = 40,
            height = 45,
            shift = (shifts and shifts.south) or { 0.03125, -1.0625 }
        },
        west =
        {
            filename = "__base__/graphics/entity/assembling-machine-3/pipe-west.png",
            priority = "extra-high",
            width = 40,
            height = 45,
            --shift = {0.8125, 0}
            shift = (shifts and shifts.west) or { 0.5625, -0.03125 }
        }
    }
end
