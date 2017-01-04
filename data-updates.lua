require "config"

dytech:resolve_templates()

require("prototypes.intermediates.new.miscellaneous")
-- require("prototypes.intermediates.new.gems")
require("prototypes.intermediates.new.lenses")
-- require("prototypes.intermediates.new.battery-packs")
require("prototypes.intermediates.new.electronics")
require("prototypes.intermediates.new.capacitors")
require("prototypes.intermediates.new.heaters")
require("prototypes.intermediates.new.frames")
require("prototypes.intermediates.new.blades")
require("prototypes.intermediates.new.item-exits")
require("prototypes.intermediates.new.miningheads")
require("prototypes.intermediates.new.assemblebots")
require("prototypes.intermediates.new.gearboxes")
require("prototypes.intermediates.new.turrets")
require("prototypes.intermediates.new.robot-frames")

dytech:apply()

-- require("prototypes.resources.gems-recipe")

-- Creating machine prototypes
require("prototypes.machines.sawmill")
-- require("prototypes.machines.compressor")
require("prototypes.machines.liquid-handler")

if Config.Greenhouse then
	require("prototypes.machines.greenhouse")
	require("prototypes.intermediates.greenhouse")
	require("prototypes.recipes.greenhouse")
end

-- Tiles
require("prototypes.tile.sand-tiles")

dytech:apply()
