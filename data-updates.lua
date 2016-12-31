require "config"

dytech:resolve_templates()

require("prototypes.intermediates.creation")
require("prototypes.resources.gems-recipe")
require("prototypes.intermediates.inter")

-- Creating machine prototypes
require("prototypes.machines.functions")
require("prototypes.machines.sawmill")
require("prototypes.machines.compressor")
require("prototypes.machines.liquid-handler")

if Config.Greenhouse then
	require("prototypes.machines.greenhouse")
	require("prototypes.intermediates.greenhouse")
	require("prototypes.recipes.greenhouse")
end

-- Tiles
require("prototypes.tile.sand-tiles")

dytech:apply()
