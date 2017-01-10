dytech.tests = { }
dytech.assert = (function()
    local object = { }

    local function err(msg, val)
        dytech.message = msg .. " (" .. tostring(val) .. ")"
        error(val)
    end

    local function is_true(val) 
        if not (type(val) == "boolean") then
            err("Value is not a boolean", val)
        end
        if not val then
            err("Value is not 'true'", val)
        end
    end

    local function is_false(val) 
        if not (type(val) == "boolean") then
            err("Value is not a boolean", val)
        end
        if val then
            err("Value is not 'false'", val)
        end
    end

    local function is_truthy(val) 
        if not val then
            err("Value is not 'truthy'", val)
        end
    end

    local function is_falsy(val) 
        if val then
            err("Value is not 'falsy'", val)
        end
    end

    -- apply values
    object.is_true = is_true
    object.is_false = is_false
    object.is_truthy = is_truthy
    object.is_falsy = is_falsy

    return object
end)()

dytech.describe = function(group, group_func)
    local it_func = function(name, test_func)
        table.insert(dytech.tests, function()
            log("Running test [" .. group .. ": " .. name .. "]")

            local ENV = setmetatable({ 
                assert = dytech.assert,
            }, { 
                __index = _G,
            })
            setfenv(test_func, ENV)


            local success = pcall(test_func)

            if success then
                log("__SUCCESS__")
                log("Success!")
            else 
                log("__FAIL__")
                log("Assert: " .. dytech.message)
            end
        end)
    end


    local ENV = setmetatable({ 
        it = it_func,
    }, { 
        __index = _G,
    })
    setfenv(group_func, ENV)

    group_func()
end

function dytech.run_tests()
    for _, test in ipairs(dytech.tests) do
        test()
    end
end
