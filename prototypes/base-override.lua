require "prototypes.override-functions"

require "prototypes.update-base"


--[[ Technologies ]]--
data.raw["technology"]["fluid-handling"].prerequisites={"steel-processing"}
data.raw["technology"]["steel-processing"].prerequisites={"automation"}
AddRequirementToTech("advanced-oil-processing", "water-cleaning")
AddRequirementToTech("sulfur-processing", "water-cleaning")
AddRecipeToTech("steel-processing", "steel-gear-wheel")
data.raw["recipe"]["iron-gear-wheel"].enabled = false
AddRecipeToTech("automation", "iron-gear-wheel")