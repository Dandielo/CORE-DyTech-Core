require "config"

require("prototypes.intermediates.creation")
require("prototypes.resources.gems-recipe")
require("prototypes.intermediates.inter")

require("prototypes.machines.compressor.item")
require("prototypes.machines.compressor.recipe")
require("prototypes.machines.sawmill")

require("prototypes.machines.liquid-handler.item")
require("prototypes.machines.liquid-handler.recipe")
require("prototypes.machines.liquid-handler.tech")

if Config.Greenhouse then
	require("prototypes.machines.greenhouse")
	require("prototypes.intermediates.greenhouse")
	require("prototypes.recipes.greenhouse")
end

-- Tiles
require("prototypes.tile.tiles")

dytech:apply()
