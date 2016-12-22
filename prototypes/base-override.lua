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






--[[ Recipes ]]--
ChangeRecipe("steam-engine", "iron-gear-wheel", "gearbox-1", 2)
ChangeRecipe("burner-mining-drill", "iron-gear-wheel", "stone-gear-wheel", 3)
ChangeRecipe("burner-inserter", "iron-gear-wheel", "stone-gear-wheel", 1)
ChangeRecipe("offshore-pump", "iron-gear-wheel", "stone-gear-wheel", 1)
ChangeRecipe("science-pack-1", "iron-gear-wheel", "stone-gear-wheel", 1)
ChangeRecipe("transport-belt", "iron-gear-wheel", "stone-gear-wheel", 1)
ChangeRecipe("lab", "iron-gear-wheel", "stone-gear-wheel", 5)
AddToRecipe("engine-unit", "gearbox-1", 1)
AddToRecipe("electric-engine-unit", "gearbox-2", 1)
ChangeRecipe("roboport", "iron-gear-wheel", "frame-3", 1)



AddToRecipe("boiler", "rotor-1", 1)
AddToRecipe("radar", "frame-1", 1)
AddToRecipe("electric-mining-drill", "frame-1", 1)
AddToRecipe("solar-panel", "flux-capacitor-1", 1)
AddToRecipe("solar-panel", "solar-cell", 9)
data.raw.recipe["assembling-machine-1"].ingredients = {}
AddToRecipe("assembling-machine-1", "assemblebot-1", 1)
AddToRecipe("assembling-machine-1", "frame-1", 1)
data.raw.recipe["assembling-machine-2"].ingredients = {}
AddToRecipe("assembling-machine-2", "assembling-machine-1", 1)
AddToRecipe("assembling-machine-2", "assemblebot-2", 1)
AddToRecipe("assembling-machine-2", "frame-2", 1)

AddToRecipe("assembling-machine-3", "assemblebot-3", 1)
AddToRecipe("assembling-machine-3", "capacitor-1", 3)
AddToRecipe("car", "rubber", 5)
ChangeRecipe("tank", "iron-gear-wheel", "steel-gear-wheel", 15)
AddToRecipe("diesel-locomotive", "steel-gear-wheel", 5)
AddToRecipe("cargo-wagon", "steel-gear-wheel", 5)
AddToRecipe("logistic-robot", "capacitor-1", 1)
AddToRecipe("construction-robot", "capacitor-1", 1)
AddToRecipe("roboport", "capacitor-1", 8)
AddToRecipe("accumulator", "flux-capacitor-1", 3)
data.raw.recipe["steel-furnace"].ingredients = {}
AddToRecipe("steel-furnace", "stone-furnace", 1)
AddToRecipe("steel-furnace", "frame-1", 1)
AddToRecipe("steel-furnace", "stone-brick", 10)
AddToRecipe("steel-furnace", "steel-plate", 8)
data.raw.recipe["electric-furnace"].ingredients = {}
AddToRecipe("electric-furnace", "steel-furnace", 1)
AddToRecipe("electric-furnace", "advanced-circuit", 5)
AddToRecipe("electric-furnace", "stone-brick", 10)
AddToRecipe("electric-furnace", "frame-2", 1)
AddToRecipe("electric-furnace", "heater-1", 2)
RemoveFromRecipe("electric-mining-drill","iron-gear-wheel")
RemoveFromRecipe("electric-mining-drill","iron-plate")
AddToRecipe("electric-mining-drill", "burner-mining-drill", 1)
AddToRecipe("electric-mining-drill", "mininghead-0", 1)
AddToRecipe("beacon", "capacitor-1", 2)
AddToRecipe("pumpjack", "capacitor-1", 2)
AddToRecipe("pumpjack", "frame-1", 2)
AddToRecipe("oil-refinery", "frame-2", 1)
AddToRecipe("battery", "capacitor-1", 1)
AddToRecipe("small-pump", "capacitor-1", 1)
AddToRecipe("chemical-plant", "capacitor-1", 1)
AddToRecipe("chemical-plant", "frame-2", 1)
data.raw.recipe["inserter"].ingredients = {}
AddToRecipe("inserter", "burner-inserter", 1)
AddToRecipe("inserter", "electronic-circuit", 1)

-------------- Military 
data.raw.recipe["gun-turret"].ingredients = {}
AddToRecipe("gun-turret", "gun-turret-base", 1)
AddToRecipe("gun-turret", "gun-turret-stock", 1)
AddToRecipe("gun-turret", "turret-guidance", 1)
data.raw.recipe["laser-turret"].ingredients = {}
AddToRecipe("laser-turret", "laser-turret-base", 1)
AddToRecipe("laser-turret", "laser-turret-stock", 1)
AddToRecipe("laser-turret", "turret-guidance", 1)
AddToRecipe("laser-turret", "basic-lens", 1)
data.raw.recipe["flamethrower-turret"].ingredients = {}
AddToRecipe("flamethrower-turret", "flame-turret-base", 1)
AddToRecipe("flamethrower-turret", "flame-turret-stock", 1)
AddToRecipe("flamethrower-turret", "turret-guidance", 1)
AddToRecipe("flamethrower-turret", "flame-thrower", 1)
AddToRecipe("piercing-rounds-magazine", "firearm-magazine", 1)
AddToRecipe("piercing-shotgun-shell", "shotgun-shell", 1)
AddToRecipe("tank", "submachine-gun", 1)
AddToRecipe("power-armor-mk2", "power-armor", 1)
AddToRecipe("power-armor", "modular-armor", 1)
AddToRecipe("modular-armor", "heavy-armor", 1)
AddToRecipe("heavy-armor", "light-armor", 1)
AddToRecipe("submachine-gun", "pistol", 1)
RemoveFromRecipe("submachine-gun","iron-gear-wheel")
RemoveFromRecipe("submachine-gun","copper-plate")
data.raw.recipe["combat-shotgun"].ingredients = {}
AddToRecipe("combat-shotgun", "shotgun", 1)
AddToRecipe("combat-shotgun", "steel-plate", 10)
data.raw.recipe["flame-thrower"].ingredients = {}
AddToRecipe("flame-thrower", "portable-tank", 1)
AddToRecipe("flame-thrower", "flame-thrower-nozzle", 1)
AddToRecipe("steel-axe", "iron-axe", 1)
RemoveFromRecipe("steel-axe", "iron-stick")



--[[ Technologies ]]--
data.raw["technology"]["fluid-handling"].prerequisites={"steel-processing"}
data.raw["technology"]["steel-processing"].prerequisites={"automation"}
AddRequirementToTech("advanced-oil-processing", "water-cleaning")
AddRequirementToTech("sulfur-processing", "water-cleaning")
AddRecipeToTech("steel-processing", "steel-gear-wheel")
data.raw["recipe"]["iron-gear-wheel"].enabled = false
AddRecipeToTech("automation", "iron-gear-wheel")