core.gui.append
{
    type = "button",
    name = "dytech-debug-button",
    open = "dytech-debug-flow",
    parent = "dytech-menu",

    caption = { "dytech-gui.debug-button" },
}

core.gui.create 
{
    type = "flow",
    name = "dytech-debug-flow",
    direction = "horizontal",

    -- A frame can define child elements
    childs = {
        {
            type = "frame",
            name = "dytech-debug-menu",
            parent = "dytech-menu",
            direction = "vertical",
            
            caption = { "dytech-gui.debug-title" },
            childs = { 
                {
                    type = "button",
                    name = "debug-research-all-button",
                    caption = { "dytech-gui.debug-research-all-button" }
                },
            }
        },
    }
}

-- 
-- Gui handlers
function core.gui.clicked.debug_research_all_button(event)
	local player_force = game.players[event.player_index].force
	player_force.research_all_technologies()
end

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
