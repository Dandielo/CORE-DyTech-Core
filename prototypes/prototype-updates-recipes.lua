 -------------- Other recipes 
ingredients.add("radar",                        "frame-1", 1)  
ingredients.add("boiler",                       "rotor-1", 1)
ingredients.add("small-pump",                   "capacitor-1", 1)
ingredients.replace("lab",                      "iron-gear-wheel", "stone-gear-wheel", 5)
ingredients.replace("offshore-pump",            "iron-gear-wheel", "stone-gear-wheel", 1)
ingredients.replace("steam-engine",             "iron-gear-wheel", "gearbox-1", 2)


-------------- Intermediates 
ingredients.add("battery",                      "capacitor-1", 1)
ingredients.add("engine-unit",                  "gearbox-1", 1)
ingredients.add("electric-engine-unit",         "gearbox-2", 1)
ingredients.replace("science-pack-1",           "iron-gear-wheel", "stone-gear-wheel", 1)


-------------- Oil processing
ingredients.add("pumpjack",                     "frame-1", 2)
ingredients.add("pumpjack",                     "capacitor-1", 2)
ingredients.add("chemical-plant",               "frame-2", 1)
ingredients.add("chemical-plant",               "capacitor-1", 1)
ingredients.add("oil-refinery",                 "frame-2", 1)


-------------- Logistics
ingredients.add("logistic-robot",               "capacitor-1", 1)
ingredients.add("construction-robot",           "capacitor-1", 1)
ingredients.add("roboport",                     "capacitor-1", 8)
ingredients.replace("roboport",                 "iron-gear-wheel", "frame-3", 1)


-------------- Solar energy and Becon
ingredients.add("solar-panel",                  "solar-cell", 9)
ingredients.add("solar-panel",                  "flux-capacitor-1", 1)
ingredients.add("accumulator",                  "flux-capacitor-1", 3)
ingredients.add("beacon",                       "capacitor-1", 2)


-------------- Inserters, belts and vehicles
ingredients.replace("burner-inserter",          "iron-gear-wheel", "stone-gear-wheel", 1)
ingredients.clear "inserter"
ingredients.add("inserter",                     "burner-inserter", 1)
ingredients.add("inserter",                     "electronic-circuit", 1)

ingredients.replace("transport-belt",           "iron-gear-wheel", "stone-gear-wheel", 1)

ingredients.add("car",                          "rubber", 5)
ingredients.add("cargo-wagon",                  "steel-gear-wheel", 5)
ingredients.add("diesel-locomotive",            "steel-gear-wheel", 5)


-------------- Assembling machines
ingredients.clear "assembling-machine-1"
ingredients.add("assembling-machine-1",         "assemblebot-1", 1)
ingredients.add("assembling-machine-1",         "frame-1", 1)

ingredients.clear "assembling-machine-2"
ingredients.add("assembling-machine-2",         "assembling-machine-1", 1)
ingredients.add("assembling-machine-2",         "assemblebot-2", 1)
ingredients.add("assembling-machine-2",         "frame-2", 1)

ingredients.add("assembling-machine-3",         "assemblebot-3", 1)
ingredients.add("assembling-machine-3",         "capacitor-1", 3)


-------------- Furnances and drills
ingredients.clear "steel-furnace"
ingredients.add("steel-furnace",                "stone-furnace", 1)
ingredients.add("steel-furnace",                "frame-1", 1)
ingredients.add("steel-furnace",                "stone-brick", 10)
ingredients.add("steel-furnace",                "steel-plate", 8)

ingredients.clear "electric-furnace" 
ingredients.add("electric-furnace",             "steel-furnace", 1)
ingredients.add("electric-furnace",             "advanced-circuit", 5)
ingredients.add("electric-furnace",             "stone-brick", 10)
ingredients.add("electric-furnace",             "frame-2", 1)
ingredients.add("electric-furnace",             "heater-1", 2)

ingredients.replace("burner-mining-drill",      "iron-gear-wheel", "stone-gear-wheel", 3)

ingredients.remove("electric-mining-drill",     "iron-plate")
ingredients.remove("electric-mining-drill",     "iron-gear-wheel")
ingredients.add("electric-mining-drill",        "burner-mining-drill", 1)
ingredients.add("electric-mining-drill",        "mininghead-0", 1)
ingredients.add("electric-mining-drill",        "frame-1", 1)


-------------- Military turrets
ingredients.clear "gun-turret"
ingredients.add("gun-turret",                   "gun-turret-base", 1)
ingredients.add("gun-turret",                   "gun-turret-stock", 1)
ingredients.add("gun-turret",                   "turret-guidance", 1)

ingredients.clear "laser-turret"
ingredients.add("laser-turret",                 "laser-turret-base", 1)
ingredients.add("laser-turret",                 "laser-turret-stock", 1)
ingredients.add("laser-turret",                 "turret-guidance", 1)
ingredients.add("laser-turret",                 "basic-lens", 1)

ingredients.clear "flamethrower-turret"
ingredients.add("flamethrower-turret",          "flame-turret-base", 1)
ingredients.add("flamethrower-turret",          "flame-turret-stock", 1)
ingredients.add("flamethrower-turret",          "turret-guidance", 1)
ingredients.add("flamethrower-turret",          "flame-thrower", 1)


-------------- Military guns, armors and vehicles
ingredients.add("piercing-rounds-magazine",     "firearm-magazine", 1)
ingredients.add("piercing-shotgun-shell",       "shotgun-shell", 1)
ingredients.add("power-armor-mk2",              "power-armor", 1)
ingredients.add("power-armor",                  "modular-armor", 1)
ingredients.add("modular-armor",                "heavy-armor", 1)
ingredients.add("heavy-armor",                  "light-armor", 1)

ingredients.add("submachine-gun",               "pistol", 1)
ingredients.remove("submachine-gun",            "iron-gear-wheel")
ingredients.remove("submachine-gun",            "copper-plate")

ingredients.clear "combat-shotgun"
ingredients.add("combat-shotgun",               "shotgun", 1)
ingredients.add("combat-shotgun",               "steel-plate", 10)

ingredients.clear "flame-thrower"
ingredients.add("flame-thrower",                "portable-tank", 1)
ingredients.add("flame-thrower",                "flame-thrower-nozzle", 1)

ingredients.add("tank",                         "submachine-gun", 1)
ingredients.replace("tank",                     "iron-gear-wheel", "steel-gear-wheel", 15)


-------------- 'Mele weapons'
ingredients.add("steel-axe",                    "iron-axe", 1)
ingredients.remove("steel-axe",                 "iron-stick")

