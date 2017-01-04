-- require "prototypes.intermediates.intermediates"

INTERMEDIATES = {
	---------------------------------------------------- Misc--------------------------------------------------------
	{
		Name = "advanced-flying-robot-frame",
		Subgroup = "all",
		Enabled = false,
		Productivity = false,
		Recipe = true,
		Order = "5",
		Time = 5,
		RecipeType = "crafting-with-fluid",
		Recipe_Metallurgy = {{type = "item", name="flying-robot-frame", amount=1},{type = "fluid", name="molten-titanium", amount=5}},
		Recipe_Normal = {{type = "item", name="flying-robot-frame", amount=1},{type = "item", name="steel-plate", amount=2}},
		AddToTech = "logistic-system-1",
		Obsolete_Without_Machine = true,
	},
	{
		Name = "ultimate-flying-robot-frame",
		Subgroup = "all",
		Enabled = false,
		Productivity = false,
		Recipe = true,
		Order = "6",
		Time = 5,
		RecipeType = "crafting-with-fluid",
		Recipe_Metallurgy = {{type = "item", name="flying-robot-frame", amount=1},{type = "fluid", name="molten-titanium-aluminide", amount=5}},
		Recipe_Normal = {{type = "item", name="flying-robot-frame", amount=1},{type = "item", name="steel-plate", amount=2}},
		AddToTech = "logistic-system-2",
		Obsolete_Without_Machine = true,
	},
	---------------------------------------------------- Gems --------------------------------------------------------
	-----
	---
	---------------------------------------------------- Lenses --------------------------------------------------------	
	---------------------------------------------------- Battery-Packs -------------------------------------------------
	---------------------------------------------------- Electronics--------------------------------------------------------
	---------------------------------------------------- Mining Drill heads--------------------------------------------------------	
	---------------------------------------------------- Frames --------------------------------------------------------
	---------------------------------------------------- Blades--------------------------------------------------------
	---------------------------------------------------- Capacitors--------------------------------------------------------
	---------------------------------------------------- ItemExits --------------------------------------------------------
	---------------------------------------------------- Assemblebots --------------------------------------------------------
	---------------------------------------------------- Heating Elements --------------------------------------------------------
	---------------------------------------------------- GearBoxes --------------------------------------------------------
	---------------------------------------------------- Turrets --------------------------------------------------------
}
