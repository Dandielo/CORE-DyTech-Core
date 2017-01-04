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
