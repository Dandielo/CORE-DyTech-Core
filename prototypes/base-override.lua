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
ingredients.replace("steam-engine", "iron-gear-wheel", "gearbox-1", 2)
ingredients.replace("burner-mining-drill", "iron-gear-wheel", "stone-gear-wheel", 3)
ingredients.replace("burner-inserter", "iron-gear-wheel", "stone-gear-wheel", 1)
ingredients.replace("offshore-pump", "iron-gear-wheel", "stone-gear-wheel", 1)
ingredients.replace("science-pack-1", "iron-gear-wheel", "stone-gear-wheel", 1)
ingredients.replace("transport-belt", "iron-gear-wheel", "stone-gear-wheel", 1)
ingredients.replace("lab", "iron-gear-wheel", "stone-gear-wheel", 5)
ingredients.add("engine-unit", "gearbox-1", 1)
ingredients.add("electric-engine-unit", "gearbox-2", 1)
ingredients.replace("roboport", "iron-gear-wheel", "frame-3", 1)



ingredients.add("boiler", "rotor-1", 1)
ingredients.add("radar", "frame-1", 1)
ingredients.add("electric-mining-drill", "frame-1", 1)
ingredients.add("solar-panel", "flux-capacitor-1", 1)
ingredients.add("solar-panel", "solar-cell", 9)

ingredients.clear "assembling-machine-1"
ingredients.add("assembling-machine-1", "assemblebot-1", 1)
ingredients.add("assembling-machine-1", "frame-1", 1)

ingredients.clear "assembling-machine-2"
ingredients.add("assembling-machine-2", "assembling-machine-1", 1)
ingredients.add("assembling-machine-2", "assemblebot-2", 1)
ingredients.add("assembling-machine-2", "frame-2", 1)

ingredients.add("assembling-machine-3", "assemblebot-3", 1)
ingredients.add("assembling-machine-3", "capacitor-1", 3)
ingredients.add("car", "rubber", 5)
ingredients.replace("tank", "iron-gear-wheel", "steel-gear-wheel", 15)
ingredients.add("diesel-locomotive", "steel-gear-wheel", 5)
ingredients.add("cargo-wagon", "steel-gear-wheel", 5)
ingredients.add("logistic-robot", "capacitor-1", 1)
ingredients.add("construction-robot", "capacitor-1", 1)
ingredients.add("roboport", "capacitor-1", 8)
ingredients.add("accumulator", "flux-capacitor-1", 3)

ingredients.clear "steel-furnace"
ingredients.add("steel-furnace", "stone-furnace", 1)
ingredients.add("steel-furnace", "frame-1", 1)
ingredients.add("steel-furnace", "stone-brick", 10)
ingredients.add("steel-furnace", "steel-plate", 8)

ingredients.clear "electric-furnace" 
ingredients.add("electric-furnace", "steel-furnace", 1)
ingredients.add("electric-furnace", "advanced-circuit", 5)
ingredients.add("electric-furnace", "stone-brick", 10)
ingredients.add("electric-furnace", "frame-2", 1)
ingredients.add("electric-furnace", "heater-1", 2)

ingredients.remove("electric-mining-drill","iron-gear-wheel")
ingredients.remove("electric-mining-drill","iron-plate")
ingredients.add("electric-mining-drill", "burner-mining-drill", 1)
ingredients.add("electric-mining-drill", "mininghead-0", 1)

ingredients.add("beacon", "capacitor-1", 2)

ingredients.add("pumpjack", "capacitor-1", 2)
ingredients.add("pumpjack", "frame-1", 2)

ingredients.add("oil-refinery", "frame-2", 1)
ingredients.add("battery", "capacitor-1", 1)
ingredients.add("small-pump", "capacitor-1", 1)

ingredients.add("chemical-plant", "capacitor-1", 1)
ingredients.add("chemical-plant", "frame-2", 1)

ingredients.clear "inserter"
ingredients.add("inserter", "burner-inserter", 1)
ingredients.add("inserter", "electronic-circuit", 1)

-------------- Military 
ingredients.clear "gun-turret"
ingredients.add("gun-turret", "gun-turret-base", 1)
ingredients.add("gun-turret", "gun-turret-stock", 1)
ingredients.add("gun-turret", "turret-guidance", 1)

ingredients.clear "laser-turret"
ingredients.add("laser-turret", "laser-turret-base", 1)
ingredients.add("laser-turret", "laser-turret-stock", 1)
ingredients.add("laser-turret", "turret-guidance", 1)
ingredients.add("laser-turret", "basic-lens", 1)

ingredients.clear "flamethrower-turret"
ingredients.add("flamethrower-turret", "flame-turret-base", 1)
ingredients.add("flamethrower-turret", "flame-turret-stock", 1)
ingredients.add("flamethrower-turret", "turret-guidance", 1)
ingredients.add("flamethrower-turret", "flame-thrower", 1)

ingredients.add("piercing-rounds-magazine", "firearm-magazine", 1)
ingredients.add("piercing-shotgun-shell", "shotgun-shell", 1)
ingredients.add("tank", "submachine-gun", 1)
ingredients.add("power-armor-mk2", "power-armor", 1)
ingredients.add("power-armor", "modular-armor", 1)
ingredients.add("modular-armor", "heavy-armor", 1)
ingredients.add("heavy-armor", "light-armor", 1)
ingredients.add("submachine-gun", "pistol", 1)

ingredients.remove("submachine-gun","iron-gear-wheel")
ingredients.remove("submachine-gun","copper-plate")

ingredients.clear "combat-shotgun"
ingredients.add("combat-shotgun", "shotgun", 1)
ingredients.add("combat-shotgun", "steel-plate", 10)

ingredients.clear "flame-thrower"
ingredients.add("flame-thrower", "portable-tank", 1)
ingredients.add("flame-thrower", "flame-thrower-nozzle", 1)

ingredients.add("steel-axe", "iron-axe", 1)
ingredients.remove("steel-axe", "iron-stick")



--[[ Technologies ]]--
data.raw["technology"]["fluid-handling"].prerequisites={"steel-processing"}
data.raw["technology"]["steel-processing"].prerequisites={"automation"}
AddRequirementToTech("advanced-oil-processing", "water-cleaning")
AddRequirementToTech("sulfur-processing", "water-cleaning")
AddRecipeToTech("steel-processing", "steel-gear-wheel")
data.raw["recipe"]["iron-gear-wheel"].enabled = false
AddRecipeToTech("automation", "iron-gear-wheel")