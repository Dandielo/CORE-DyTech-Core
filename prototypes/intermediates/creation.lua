require "prototypes.intermediates.intermediates"

local function DyTech_Core_Create_Intermediates_Item(NAME, CATEGORY, FUEL, GEM, ORDER)
	local result = util.table.deepcopy(data.raw["item"]["wood"])
	if CATEGORY == nil then local CATEGORY = "dytech-intermediates-raw" end
	result.name = NAME
	result.stack_size = 200
	if NAME == "sand" then
		result.stack_size = 2000
	end
	if ORDER then
		result.order = ORDER
	else
		result.order = NAME
	end
	if GEM then
		result.subgroup = "dytech-gem-"..CATEGORY
		result.icon = "__dytech-core__/graphics/gems/"..NAME..".png"
	else
		result.subgroup = "dytech-intermediates-"..CATEGORY
		result.icon = "__dytech-core__/graphics/intermediates/"..NAME..".png"
	end
	result.fuel_value = FUEL
	data.raw["item"][result.name] = result
end

local function DyTech_Core_Create_Intermediates_Recipe(NAME, CATEGORY, ENABLED, TYPE, AMOUNT, TIME, GEM)
	local result = util.table.deepcopy(data.raw["recipe"]["wood"])
	if AMOUNT == nil then local AMOUNT = 1 end
	result.name = NAME 
	result.enabled = ENABLED
	result.ingredients = {}
	if GEM then
		result.subgroup = "dytech-gem-"..CATEGORY
		result.icon = "__dytech-core__/graphics/gems/"..NAME..".png"
	else
		result.subgroup = "dytech-intermediates-"..CATEGORY
		result.icon = "__dytech-core__/graphics/intermediates/"..NAME..".png"
	end
	result.category = TYPE 
	result.energy_required = TIME
	result.result = NAME
	result.result_count = AMOUNT
	data.raw["recipe"][result.name] = result
end

local function DyTech_Core_Create_Intermediates_Tech(DATA)
	local result = util.table.deepcopy(data.raw["technology"]["rocket-speed-5"])
	result.name = DATA.Name
	result.unit.count = DATA.Count
	result.unit.time = DATA.Time
	result.unit.ingredients = {}
	result.effects = {}
	result.icon = "__dytech-core__/graphics/intermediates/tech/"..DATA.Name..".png"
	result.prerequisites = {DATA.Prerequisites}
	data.raw["technology"][result.name] = result
end

for index,name in pairs(INTERMEDIATES) do
	if name ~= nil then
		-- First create an item
		DyTech_Core_Create_Intermediates_Item(name.Name, name.Subgroup, name.Fuel_Value, name.Gem, name.Order)

		-- Then a recipe (if there should be one)
		if name.Recipe then
			DyTech_Core_Create_Intermediates_Recipe(name.Name, name.Subgroup, name.Enabled, name.RecipeType, name.ResultAmount, name.Time, name.Gem)

			if data.raw.item["metallurgy-active"] and name.Recipe_Metallurgy then
				-- If we found the 'mettalurgy' mod we use the mettalrugy recipe
				for _,v in pairs(name.Recipe_Metallurgy) do
					table.insert(data.raw.recipe[name.Name].ingredients,v)
				end
			else
				-- else use the non-metalurgy recipe
				for _,v in pairs(name.Recipe_Normal) do
					table.insert(data.raw.recipe[name.Name].ingredients,v)
				end
			end
		end

		-- If we should have a tech for it? 
		if name.Tech then
			----------------------------------------------------------------
			-- Should be only added when Dytech Machine is present
			if name.Obsolete_Without_Machine then
				if data.raw.item["machines-active"] then
					-- Create tech from tech stuff
					DyTech_Core_Create_Intermediates_Tech(name.Techstuff)
					-- Add ingredient to tech 
					Add_Ingredient_To_Tech_Smart(name.Techstuff)

					-- add this recipe to the tech 
					tech.add_recipe(name.Techstuff.Name , name.Name)

					-- if we got additional requirements for metallurgy tech 
					if name.Tech_Metallurgy then 
						if data.raw.item["metallurgy-active"] then
							for i, t in pairs(name.Tech_Metallurgy) do
								tech.add_requirement(name.Techstuff.Name, t)
							end
						end
					end
				end
			elseif name.Obsolete_Without_Power then
				if data.raw.item["power-active"] then
					DyTech_Core_Create_Intermediates_Tech(name.Techstuff)
					Add_Ingredient_To_Tech_Smart(name.Techstuff)
					tech.add_recipe(name.Techstuff.Name , name.Name)
					if name.Tech_Metallurgy then 
						if data.raw.item["metallurgy-active"] then
							for i, t in pairs(name.Tech_Metallurgy) do
								tech.add_requirement(name.Techstuff.Name, t)
							end
						end
					end
				end
			elseif name.Obsolete_Without_War then
				if data.raw.item["war-active"] then
					DyTech_Core_Create_Intermediates_Tech(name.Techstuff)
					Add_Ingredient_To_Tech_Smart(name.Techstuff)
					tech.add_recipe(name.Techstuff.Name , name.Name)
					if name.Tech_Metallurgy then 
						if data.raw.item["metallurgy-active"] then
							for i, t in pairs(name.Tech_Metallurgy) do
								tech.add_requirement(name.Techstuff.Name, t)
							end
						end
					end
				end
			else
				DyTech_Core_Create_Intermediates_Tech(name.Techstuff)
				Add_Ingredient_To_Tech_Smart(name.Techstuff)
				tech.add_recipe(name.Techstuff.Name , name.Name)
				if name.Tech_Metallurgy then 
					if data.raw.item["metallurgy-active"] then
						for i, t in pairs(name.Tech_Metallurgy) do
							tech.add_requirement(name.Techstuff.Name, t)
						end
					end
				end		
			end
		end
		-- Just add the recipe to a existing tech
		if name.AddToTech ~= nil then
			if name.Obsolete_Without_Machine then
				if data.raw.item["machines-active"] then
					tech.add_recipe(name.AddToTech , name.Name)
				end
			elseif name.Obsolete_Without_Power then
				if data.raw.item["power-active"] then
					tech.add_recipe(name.AddToTech , name.Name)
				end
			elseif name.Obsolete_Without_War then
				if data.raw.item["war-active"] then	
					tech.add_recipe(name.AddToTech , name.Name)
				end
			else
				tech.add_recipe(name.AddToTech , name.Name)
			end
		end
	end
end

