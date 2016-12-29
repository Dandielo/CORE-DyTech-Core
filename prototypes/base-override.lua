require("prototypes.override-functions")

--[[ Entities ]]--
if data.raw.resource["stone"].autoplace then
	local STONE1 = data.raw.resource["stone"].autoplace.richness_multiplier
	local STONE2 = data.raw.resource["stone"].autoplace.richness_base
	STONE1 = STONE1 * 1.5
	STONE2 = STONE2 * 2
end
data.raw["player"]["player"].inventory_size = 100
data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 3
data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 5
data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 8
table.insert(data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes,{
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, 0} }}
      })
table.insert(data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes,{
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 0} }}
      })
table.insert(data.raw["assembling-machine"]["assembling-machine-3"].fluid_boxes,{
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, 0} }}
      })
table.insert(data.raw["assembling-machine"]["assembling-machine-3"].fluid_boxes,{
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 100,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 0} }}
      })
	  
--[[ Items ]]--
data.raw["item"]["copper-plate"].stack_size = 200
data.raw["item"]["iron-plate"].stack_size = 200
data.raw["item"]["steel-plate"].stack_size = 200
data.raw["item"]["copper-ore"].stack_size = 200
data.raw["item"]["iron-ore"].stack_size = 200
data.raw["item"]["coal"].stack_size = 200
data.raw["item"]["stone"].stack_size = 200
data.raw["item"]["raw-wood"].stack_size = 200
data.raw["item"]["processing-unit"].stack_size = 200
data.raw["item"]["battery"].stack_size = 200
data.raw["item"]["transport-belt"].stack_size = 100
data.raw["item"]["fast-transport-belt"].stack_size = 100
data.raw["item"]["express-transport-belt"].stack_size = 100


data.raw["item"]["burner-inserter"].subgroup = "inserters-dytech-0"
data.raw["item"]["burner-inserter"].order = "1"
data.raw["item"]["inserter"].subgroup = "inserters-dytech-1"
data.raw["item"]["inserter"].order = "2"
data.raw["item"]["filter-inserter"].subgroup = "inserters-dytech-2"
data.raw["item"]["filter-inserter"].order = "2"
data.raw["item"]["stack-inserter"].subgroup = "inserters-dytech-2"
data.raw["item"]["stack-inserter"].order = "3"
data.raw["item"]["stack-filter-inserter"].subgroup = "inserters-dytech-0"
data.raw["item"]["stack-filter-inserter"].order = "5"
data.raw["item"]["long-handed-inserter"].subgroup = "inserters-dytech-1"
data.raw["item"]["long-handed-inserter"].order = "6"
data.raw["item"]["fast-inserter"].subgroup = "inserters-dytech-2"
data.raw["item"]["fast-inserter"].order = "1"


require "prototypes.prototype-updates"


--[[ Technologies ]]--
data.raw["technology"]["fluid-handling"].prerequisites={"steel-processing"}
data.raw["technology"]["steel-processing"].prerequisites={"automation"}
AddRequirementToTech("advanced-oil-processing", "water-cleaning")
AddRequirementToTech("sulfur-processing", "water-cleaning")
AddRecipeToTech("steel-processing", "steel-gear-wheel")
data.raw["recipe"]["iron-gear-wheel"].enabled = false
AddRecipeToTech("automation", "iron-gear-wheel")