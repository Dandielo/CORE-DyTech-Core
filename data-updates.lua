require "config"

dytech:resolve_templates()

require("prototypes.intermediates.new.gems")
require("prototypes.intermediates.new.lenses")
require("prototypes.intermediates.new.battery-packs")
require("prototypes.intermediates.new.electronics")
require("prototypes.intermediates.new.capacitors")
require("prototypes.intermediates.new.frames")
require("prototypes.intermediates.new.blades")
require("prototypes.intermediates.new.miningheads")
require("prototypes.intermediates.new.gearboxes")
require("prototypes.intermediates.new.turrets")

dytech:apply()

require("prototypes.intermediates.creation")
require("prototypes.resources.gems-recipe")
require("prototypes.intermediates.inter")

-- Creating machine prototypes
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
