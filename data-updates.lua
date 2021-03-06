require "config"

dytech:resolve_templates()

require("prototypes.intermediates.new.miscellaneous")
require("prototypes.intermediates.new.lenses")
require("prototypes.intermediates.new.heaters")
require("prototypes.intermediates.new.blades")
require("prototypes.intermediates.new.item-exits")
require("prototypes.intermediates.new.miningheads")
require("prototypes.intermediates.new.gearboxes")
require("prototypes.intermediates.new.turrets")

dytech:apply()

require "prototypes.autoplace-controls"


-- Creating machine prototypes
require("prototypes.machines.sawmill")
require("prototypes.machines.liquid-handler")

if Config.Greenhouse then
    require("prototypes.machines.greenhouse")
    require("prototypes.intermediates.greenhouse")
    require("prototypes.recipes.greenhouse")
end

-- Tiles
require("prototypes.tile.sand-tiles")

dytech:apply()
