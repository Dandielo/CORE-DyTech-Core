-- require "prototypes.intermediates.intermediates"

INTERMEDIATES = {
	---------------------------------------------------- Misc--------------------------------------------------------
	{
		Name = "rubber",
		Subgroup = "processing",
		Enabled = true,
		Recipe = true,
		Time = 2,
		RecipeType = "smelting",
		Recipe_Normal = {{type="item", name="resin", amount=2}},
		Productivity = true,
	},
	{
		Name = "resin",
		Subgroup = "raw",
		Enabled = false,
	},	
	{
		Name = "stone-gear-wheel",
		Subgroup = "gears",
		Enabled = true,
		Recipe = true,
		Order = "1",
		Time = 1,
		Recipe_Normal = {{type="item", name="stone", amount=2}},
		Productivity = true,
	},
	{
		Name = "steel-gear-wheel",
		Subgroup = "gears",
		Enabled = false,
		Recipe = true,
		Order = "3",
		Time = 2,
		Recipe_Normal = {{type="item", name="steel-plate", amount=2}},
		AddToTech = "steel-processing",
		Productivity = true,
	},
	{
		Name = "solar-cell",
		Subgroup = "all",
		Enabled = false,
		Recipe = true,
		Order = "1",
		Time = 2,
		Recipe_Metallurgy = {{type="item", name="silicon", amount=3},{type="item", name="copper-cable", amount=5},{type="item", name="iron-plate", amount=1},{type="item", name="glass", amount=2}},
		Recipe_Normal = {{type="item", name="iron-plate", amount=3},{type="item", name="copper-cable", amount=5},{type="item", name="copper-plate", amount=1},{type="item", name="glass", amount=2}},
		AddToTech = "solar-energy",
		Productivity = true,
	},
	{
		Name = "sand",
		Subgroup = "raw",
		Enabled = true,
		Recipe = true,
		Time = 5,
		Recipe_Normal = {{type="item", name="stone", amount=1}},
		Productivity = true,
	},
	{
		Name = "sandbag",
		Subgroup = "processing",
		Enabled = true,
		Recipe = true,
		Recipe_Normal = {{type="item", name="sand", amount=25}},
	},
	{
		Name = "quick-sand",
		Subgroup = "processing",
		Enabled = true,
		Recipe = true,
		RecipeType = "crafting-with-fluid",
		Recipe_Normal = {{type="item", name="sand", amount=5},{type="fluid", name="water", amount=5}},
	},
	{
		Name = "glass",
		Subgroup = "processing",
		Enabled = true,
		Recipe = true,
		Time = 2,
		RecipeType = "smelting",
		Recipe_Normal = {{type="item", name="sand", amount=2}},
		Productivity = true,
	},
	{
		Name = "bone",
		Subgroup = "raw",
		Enabled = false,
	},
	{
		Name = "bone-charcoal",
		Subgroup = "processing",
		Fuel_Value = "3.5MJ",
		RecipeType = "smelting",
		Enabled = false,
		Recipe = true,
		Time = 2,
		Recipe_Normal = {{type="item", name="bone", amount=1}},
		ResultAmount = 3,
		Tech = true,
		Techstuff = { Name = "alien-repurpose", Prerequisites = "military", Count = 20, Time = 20, Ingredients ={ Science1=true , Science2=true } }
	},
	{
		Name = "chitin",
		Subgroup = "raw",
		Enabled = false,
	},
	{
		Name = "alien-artifact-fragment",
		Subgroup = "raw",
		Enabled = false,
	},
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
