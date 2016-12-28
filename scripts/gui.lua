require "scripts/base"
require "scripts/helpers"


local gui = { }
gui.root = { } -- Gui root for each player
gui.flow = { } -- Gui flow root for each player
gui.visible = { } -- Visible gui elements for each player

gui.structs = { }
gui.handlers = { 
    -- Handler lists for various events
    on_gui_load = { },
    on_gui_click = { },
    on_gui_refresh = { },
}

-- Idle timeout (after which the gui will reset to the base state: control.lua@196) 
-- * if you set '0' it will disable the gui reset
gui.idle_time = 600
gui.idle_timeout = { } -- Each player has it's own

-- Refresh timeout (after what time should elements get a 'refresh' event)
gui.refresh_time = 300
gui.refresh_timeout = 0


--
-- Callback proxies for gui handlers
gui.clicked = CallbackProxy(function(name, callback)
    -- Prepare the name 
    name = name:gsub("_", "-") 

    -- Register the handler
    gui.handlers.on_gui_click[name] = callback
end)

gui.refresh = CallbackProxy(function(name, callback)
    -- Prepare the name 
    name = name:gsub("_", "-") 

    -- Register the handler
    gui.handlers.on_gui_refresh[name] = callback
end)

gui.loaded = CallbackProxy(function(name, callback)
    -- Prepare the name 
    name = name:gsub("_", "-") 
    
    gui.handlers.on_gui_load[name] = callback
end)


--
-- Functions to create the dytech gui
function gui.default(name)
    -- Save the default struct name that will be shown on 'idle_timeout'
    gui.default_gui_struct = name
end

function gui.create(struct)
    -- Save the given gui struct
    gui.structs[struct.name] = { struct }
end

function gui.append(struct)
    -- Get the parent (the parent declares the parent structure that will get this struct as a child)
    local parent = struct.parent
    struct.parent = nil

    -- Get the childs
    local childs = gui.structs[parent][1].childs or { }
    table.insert(childs, struct)

    -- Set the new childs
    gui.structs[parent][1].childs = childs
end

function gui.set_player(player_index)
    local player = game.players[player_index]
    -- if gui.player ~= player then
        -- gui.player_index = player_index
    gui.root[player_index] = player.gui.top
    -- end
end

function gui.close(player_index)
    if gui.flow[player_index] then
        gui.flow[player_index].destroy()
        gui.flow[player_index] = nil
    end
end

function gui.show(player_index, struct_name)
    -- Close the current gui and set the new receiver
    gui.set_player(player_index)
    gui.close(player_index)

    -- Create a new flow
    gui.flow[player_index] = gui.root[player_index].add 
    {
        type = "flow", 
        name = "dytech-gui-flow",
        direction = "vertical", 
    }

    -- Clear visible gui elements for the given player
    gui.visible[player_index] = { }

    -- Create gui from a struct
    gui.build_struct(player_index, gui.flow[player_index], gui.structs[struct_name] or { })

    -- Returns the new flow
    return gui.flow[player_index]
end

function gui.build_element(player_index, parent, data) 
    if data.open and gui.structs[data.open] then
        local gui_struct = data.open

        -- Create a handler for the given element
        gui.clicked[data.name] = function(event)
            gui.show(event.player_index, gui_struct)
        end

    elseif data.proxy then
        local proxy_data = data.proxy

        -- Create a handler for the given element
        gui.clicked[data.name] = function(event)
            remote.call(proxy_data[1], proxy_data[2], event)
        end
    end

    local element = parent.add {
        type = data.type,
        name = data.name,
        direction = data.direction,

        -- If nothing is set the this does nothing
        caption = data.caption
    }

    -- Add element to visible elements
    gui.visible[player_index][data.name] = element

    -- Call the internal 'on_gui_load' event
    gui.handle_gui_event("on_gui_load", { element = element, player_index = player_index, tick = game.tick })

    -- return the created element
    return element
end

function gui.build_struct(player_index, parent, struct)
    for _, element_data in pairs(struct) do
        local element = gui.build_element(player_index, parent, element_data)

        -- If we got child elements build them to
        if element_data.childs then
            gui.build_struct(player_index, element, element_data.childs)
        end

        -- This parent node tells the gui system to create a 'Back' button to the given parent
        if element_data.parent then
            gui.build_element(element, {
                type = "button",
                name = "dytech-back-button",
                open = element_data.parent,

                caption = { "dytech-gui.back-button" }
            })
        end
    end
end

function gui.update_idle_timeout(tick)
    gui.idle_timeout = tick + gui.idle_time
end

function gui.call_refresh_event()
    -- For each player in the game
    for player_index, elements in pairs(gui.visible) do 
 
        -- For each visible element in the player table
        for name, element in pairs(elements) do
            -- Call the internal 'on_gui_refresh' event
            gui.handle_gui_event("on_gui_refresh", { element = element, player_index = player_index, tick = game.tick, no_idle_update = true }) 
        end
    end
end

function gui.handle_time_events(tick)
    -- Check the 'idle' timeout
    if gui.idle_time > 0 and tick >= gui.idle_timeout then
        -- Update the idle_timeout
        gui.update_idle_timeout(tick)

        -- Show the timeout gui struct to the 
        assert(gui.default_gui_struct ~= nil, "If you want to disable the 'gui timeout' set the 'idle_time' to '0'!")

        -- For each player index in the game
        core.each_player_index(gui.show, gui.default_gui_struct)
    end

    -- Check the 'refresh' timeout
    if gui.refresh_time > 0 and tick >= gui.refresh_timeout then
        -- Update the refresh timeout
        gui.refresh_timeout = tick + gui.refresh_time

        -- Send refresh events to each visible element
        gui.call_refresh_event()
    end
end

-- Handles all gui events and calls registered handlers
function gui.handle_gui_event(event_name, event)
    local player = game.players[event.player_index]

    -- Check if the player is valid and connected
    if player.valid and player.connected then
        local handler = gui.handlers[event_name][event.element.name]
        if handler then
            if not event.no_idle_update then
                -- If a handlers was found update the timeout counter
                gui.update_idle_timeout(event.tick)
            end

            -- Call the handler associated with the gui element
            handler(event)
        end
    end
end



-- function showDyTechGUI(PlayerIndex)
--     local player = game.players[PlayerIndex]
--     player.gui.top.add({type="flow", direction="vertical", name="mainDyTechFlow"})
--     player.gui.top["mainDyTechFlow"].add({type="frame", direction="vertical", name="mainDyTechFrame", caption={"dytech-gui"}})
--     adder = player.gui.top["mainDyTechFlow"]["mainDyTechFrame"]

--     adder.add({type="button", name="DyTech-Core-Button", caption={"dytech-core"}})
--     if remote.interfaces["DyTech-Dynamics"] then 
--         adder.add({type="button", name="DyTech-Dynamics-Button", caption={"dytech-dynamics"}}) 
--     end
--     if remote.interfaces["DyTech-Machine"] then 
--         adder.add({type="button", name="DyTech-Machine-Button", caption={"dytech-machine"}}) 
--     end
--     if remote.interfaces["DyTech-Power"] then 
--         adder.add({type="button", name="DyTech-Power-Button", caption={"dytech-power"}}) 
--     end
--     if remote.interfaces["DyTech-Science"] then 
--         adder.add({type="button", name="DyTech-Science-Button", caption={"dytech-science"}}) 
--     end
--     if remote.interfaces["DyTech-War"] then 
--         adder.add({type="button", name="DyTech-War-Button", caption={"dytech-war"}}) 
--     end
--     if remote.interfaces["DyTech-World"] then 
--         adder.add({type="button", name="DyTech-World-Button", caption={"dytech-world"}}) 
--     end
--     if debug_for_GUI then 
--         adder.add({type="button", name="DyTech-Debug-Button", caption={"dytech--- debug"}}) 
--     end
--     adder.add({type="button", name="DyTech-Close-Button", caption={"close"}})
-- end

-- function showDyTechDebugGUI(PlayerIndex)
--     local player = game.players[PlayerIndex]
--     player.gui.top.add({type="flow", direction="vertical", name="mainDyTechDebugFlow"})
--     player.gui.top["mainDyTechDebugFlow"].add({type="frame", direction="vertical", name="mainDyTechDebugFrame", caption={"dytech--- debug-gui"}})
--     adder = player.gui.top["mainDyTechDebugFlow"]["mainDyTechDebugFrame"]

--     adder.add({type="button", name="DyTech-Debug-Dump-Button", caption="Data Dump"})
--     adder.add({type="button", name="DyTech-Debug-TestResource-Button", caption="Test Resources (500x500)"})
--     adder.add({type="button", name="DyTech-Debug-TestItems-Button", caption="Give -- debug items"})
--     adder.add({type="button", name="DyTech-Debug-Reset-Button", caption="Reset all"})
--     adder.add({type="button", name="DyTech-Debug-Technology-Button", caption="Research All"})
--     adder.add({type="button", name="DyTech-Debug-Evolution-0-Button", caption="Set Evolution to 0"})
--     adder.add({type="button", name="DyTech-Debug-Evolution-1-Button", caption="Set Evolution to 1"})
--     adder.add({type="button", name="DyTech-Close-Button", caption={"close"}})
-- end

-- function closeGUI(statement, PlayerIndex)
--     if statement=="Debug" then
--         if game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"] and game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"].valid then
--             game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"].destroy()
--         end
--     elseif statement=="DyTech" then
--         if game.players[PlayerIndex].gui.top["mainDyTechFlow"] and game.players[PlayerIndex].gui.top["mainDyTechFlow"].valid then
--             game.players[PlayerIndex].gui.top["mainDyTechFlow"].destroy()
--         end
--     elseif statement=="Core" then
--         if game.players[PlayerIndex].gui.top["mainDyTechCoreFlow"] and game.players[PlayerIndex].gui.top["mainDyTechCoreFlow"].valid then
--             game.players[PlayerIndex].gui.top["mainDyTechCoreFlow"].destroy()
--         end
--     elseif statement=="All" then
--         if game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"] and game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"].valid then
--             game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"].destroy()
--         end
--         if game.players[PlayerIndex].gui.top["mainDyTechFlow"] and game.players[PlayerIndex].gui.top["mainDyTechFlow"].valid then
--             game.players[PlayerIndex].gui.top["mainDyTechFlow"].destroy()
--         end
--         if game.players[PlayerIndex].gui.top["mainDyTechCoreFlow"] and game.players[PlayerIndex].gui.top["mainDyTechCoreFlow"].valid then
--             game.players[PlayerIndex].gui.top["mainDyTechCoreFlow"].destroy()
--         end
--     end
-- end


return gui
