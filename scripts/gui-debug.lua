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
--     adder.add({type="button", name="DyTech-Debug-Evolution-0-Button", caption="Set Evolution to 0"})
--     adder.add({type="button", name="DyTech-Debug-Evolution-1-Button", caption="Set Evolution to 1"})
--     adder.add({type="button", name="DyTech-Close-Button", caption={"close"}})
-- end
