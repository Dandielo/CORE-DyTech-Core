require "config"

require "prototypes.machines.functions"
require "prototypes.dytech-prototypes"

require "prototypes.gems.tech"
require "prototypes.gems.recipe"
require "prototypes.gems.resource"

require "prototypes.gems.raw-gem-item"
require "prototypes.gems.cut-gem-item"
require "prototypes.gems.cut-gem-recipe"
require "prototypes.gems.compressed-gem-item"
require "prototypes.gems.compressed-gem-recipe"

require("prototypes.override-functions")
require("prototypes.prototype-creation")


require("prototypes.resources.water-fluid")
require("prototypes.resources.water-recipe")

require("prototypes.trees.rubber-tree-entity")
require("prototypes.trees.rubber-tree-item")
require("prototypes.trees.rubber-tree-recipe")
require("prototypes.trees.seed-recipe")
require("prototypes.trees.sulfur-tree-entity")
require("prototypes.trees.sulfur-tree-item")
require("prototypes.trees.sulfur-tree-recipe")


-- Items Groups
require("prototypes.item-group.dytech-combat")
require("prototypes.item-group.dytech-energy")
require("prototypes.item-group.dytech-gem")
require("prototypes.item-group.dytech-inserter")
require("prototypes.item-group.dytech-intermediates")
require("prototypes.item-group.dytech-intermediates-2")
require("prototypes.item-group.dytech-machines")
require("prototypes.item-group.dytech-modules")
require("prototypes.item-group.dytech-nuclear")
require("prototypes.item-group.dytech-transport")
require("prototypes.item-group.dytech-fluids")
require("prototypes.item-group.dytech-armor")
require("prototypes.item-group.dytech-defense")
require("prototypes.item-group.dytech-train")
require("prototypes.item-group.dytech-logistic")
require("prototypes.item-group.metallurgy-1")
require("prototypes.item-group.metallurgy-2")
require("prototypes.item-group.metallurgy-3")
require("prototypes.item-group.invisible")

-- Noise Layers
require("prototypes.tile.noise-layers")

-- Catergories
require("prototypes.categories.ammo-category")
require("prototypes.categories.recipe-category")
require("prototypes.categories.resource-category")
require("prototypes.damage-type")

-- Autoplace Control
-- require("prototypes.autoplace-controls")

if Config.BaseOverride then
require "prototypes.update-base"
end

if Config.Technologies then
require("prototypes.researches.player")
--require("prototypes.researches.bots")
end

dytech:apply()