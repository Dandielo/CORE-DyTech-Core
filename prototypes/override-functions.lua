-- require "prototypes.override-functions"
-- assert(ingredients == nil, "We dont want to override anything existing")
ingredients = { }

function ingredients.clear(name)
    data.raw.recipe[name].ingredients = { }
end

function ingredients.add(name, ingredient, amount)
    table.insert(data.raw.recipe[name].ingredients, { ingredient, amount })
end

function ingredients.remove(name, ingredient)
    for index, value in pairs(data.raw.recipe[name].ingredients) do
        -- Look for the neexed ingredient and remove it 
        if value[1] == ingredient or value.name == ingredient then
            table.remove(data.raw.recipe[name].ingredients, index)
        end
    end
end

function ingredients.replace(name, old_ingredient, new_ingredient, amount)
    ingredients.remove(name, old_ingredient)
    ingredients.add(name, new_ingredient, amount)
end


-- assert(tech == nil, "We dont want to override anything existing")
tech = { }

function tech.add_recipe(name, recipe)
    table.insert(data.raw.technology[name].effects, { 
        type = "unlock-recipe",
        recipe = recipe
    })
end

function tech.add_requirement(name, requirement)
    table.insert(data.raw.technology[name].prerequisites, requirement)
end

function tech.set_requirements(name, requirements)
    data.raw.technology[name].prerequisites = requirements
end

function tech.add_ingredient(name, ingredient, amount)
    table.insert(data.raw.technology[name].unit.ingredients, { ingredient, amount })
end


-- assert(recipe == nil, "We dont want to override anything existing")
recipe = { }

function recipe.enable(name)
    data.raw.recipe[name].enabled = true
end

function recipe.disable(name)
    data.raw.recipe[name].enabled = false
end



function Add_To_Recipe_Looped(Data)
    for bla,name in pairs(Data.Ingredient) do
        table.insert(data.raw["recipe"][Data.Name].ingredients,name)
    end
end

function Add_Requirement_To_Tech_Looped(Data)
    for bla,name in pairs(Data.Prereq) do
        table.insert(data.raw["technology"][Data.Name].prerequisites, name)
    end
end

function Add_Recipe_To_Tech_Looped(Data)
    for bla,name in pairs(Data.Recipes) do
    table.insert(data.raw["technology"][Data.Name].effects,{type = "unlock-recipe",recipe = name})
    end
end

function Add_Ingredient_To_Tech_Smart(Data)
    local Statement1 = Data.Ingredients.Science1
    local Statement2 = Data.Ingredients.Science2
    local Statement3 = Data.Ingredients.Science3
    local Statement4 = Data.Ingredients.Science4
    if Statement1 then
        table.insert(data.raw["technology"][Data.Name].unit.ingredients,{"science-pack-1", 1})
    end
    if Statement2 then
        table.insert(data.raw["technology"][Data.Name].unit.ingredients,{"science-pack-2", 1})
    end
    if Statement3 then
        table.insert(data.raw["technology"][Data.Name].unit.ingredients,{"science-pack-3", 1})
    end
    if Statement4 then
        table.insert(data.raw["technology"][Data.Name].unit.ingredients,{"alien-science-pack", 1})
    end
end


------------------------------------- Rounding function for fluids to item conversation ------------------------------------------------

function round(num, idp)
  local mult = 10^(idp or 0)
  return math.ceil(num * mult + 0.5) / mult
end

---------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------

function ReplaceAllIngredientFluidWithFluid(Fluid1 , Fluid2)
    for i, recipe in pairs(data.raw.recipe) do
        for v, ingredient in pairs(data.raw.recipe[recipe.name].ingredients) do
            if ingredient.type == "fluid" then
                if ingredient.name == Fluid1 then
                    ingredient.type = "fluid"
                    ingredient.name = Fluid2
                    -- ingredient.amount = ingredient.amount
                end
            end
        end
    end
end 
------------------------------------------------------------------------------------

-- function ReplaceAllIngredientItemWithFluid(Item , Fluid)
    -- for i, recipe in pairs(data.raw.recipe) do
        -- for v, ingredient in pairs(data.raw.recipe[recipe.name].ingredients) do
            -- if ingredient.type == "item" then
                -- if ingredient.name == Item then
                    -- ingredient.type = "fluid"
                    -- ingredient.name = Fluid
                    -- ingredient.amount = round(ingredient.amount * 1)
                    -- data.raw.recipe[recipe.name].category = "crafting-with-fluid"
                -- end
            -- end
        -- end
    -- end
-- end  


function ReplaceAllIngredientItemWithItem(Item1 , Item2)
    for i, recipe in pairs(data.raw["recipe"]) do
        for v, ingredient in pairs(data.raw["recipe"][recipe.name].ingredients) do
            if ingredient.name == Item1 then
                ingredients.remove(recipe.name,Item1)
                ingredients.add(recipe.name, Item2, ingredient.amount)
            elseif ingredient[1] == Item1 then
                ingredients.remove(recipe.name,Item1)
                ingredients.add(recipe.name, Item2, ingredient[2])
            end
        end
    end
end 




-- function ChangeRecipeFluid(Name, Ingredient1, Ingredient2, Amount)
    -- for k, v in pairs(data.raw["recipe"][Name].ingredients) do
        -- if v[1] == Ingredient1 then table.remove(data.raw["recipe"][Name].ingredients, k) end
    -- end
-- data.raw.recipe[Name].category = "crafting-with-fluid"
-- table.insert(data.raw["recipe"][Name].ingredients,{name= Ingredient2, type= "fluid", amount=  Amount})
-- end

-- function ReplaceAllIngredientItemWithFluid(Item , Fluid)
    -- for i, recipe in pairs(data.raw.recipe) do
        -- for v, ingredient in pairs(data.raw.recipe[recipe.name].ingredients) do
                -- if ingredient.name == Item then
                    -- ChangeRecipeFluid(recipe.name, Item1 , Fluid , ingredient.amount)
                -- end

        -- end
    -- end
-- end  

-- ---------------------------------------------------------------------------------------

-- function ReplaceAllIngredientItemWithItem(Before , After)
    -- for i, recipe in pairs(data.raw.recipe) do
        -- for v, ingredient in pairs(data.raw.recipe[recipe.name].ingredients) do
            -- if ingredient.name == Before then
                -- ChangeRecipe(recipe.name, Before, After, ingredient.amount)
            -- end
        -- end
    -- end
-- end  
