-------------- Make the strone resources richer because of how much stone we will use for the new product line
local stone_autoplace = data.raw.resource["stone"].autoplace
if stone_autoplace then
    stone_autoplace.richness_multiplier = stone_autoplace.richness_multiplier * 1.5
    stone_autoplace.richness_base = stone_autoplace.richness_base * 2.0
end

-------------- Set the players inventory size to 100 items
data.raw["player"]["player"].inventory_size = 100


-------------- Increasing the count of ingredients assembling machines can take to handle the new recipes  
data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 3
data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 5
data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 8


-------------- Adding additional pipes to assembling machines 2 and 3
table.insert(data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes, 
{
    production_type = "input",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    base_area = 100,
    base_level = -1,
    pipe_connections = 
    {
        { 
            type = "input", 
            position = { 2, 0 } 
        }
    }
})

table.insert(data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes,
{
    production_type = "input",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    base_area = 100,
    base_level = -1,
    pipe_connections = 
    {
        { 
            type = "input", 
            position = { -2, 0 } 
        }
    }
})

table.insert(data.raw["assembling-machine"]["assembling-machine-3"].fluid_boxes,
{
    production_type = "input",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    base_area = 100,
    base_level = -1,
    pipe_connections = 
    {
        { 
            type = "input", 
            position = { 2, 0 } 
        }
    }
})

table.insert(data.raw["assembling-machine"]["assembling-machine-3"].fluid_boxes,
{
    production_type = "input",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    base_area = 100,
    base_level = -1,
    pipe_connections = 
    {
        { 
            type = "input", 
            position = { -2, 0 } 
        }
    }
})


-------------- Load additional updates for items and recipes
require "prototypes.update-base-items"
require "prototypes.update-base-recipe-ingredients"


-------------- Factorio technology updates
tech.set_requirements("fluid-handling",             { "steel-processing" })
tech.set_requirements("steel-processing",           { "automation" })

tech.add_requirement("advanced-oil-processing",     "water-cleaning")
tech.add_requirement("sulfur-processing",           "water-cleaning")

tech.add_recipe("automation",                       "iron-gear-wheel")


-------------- Factorio recipe changes
recipe.disable "iron-gear-wheel"
