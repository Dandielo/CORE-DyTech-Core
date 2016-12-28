module("GUI", package.seeall)
require "scripts/base"
require "scripts/helpers"


local gui = { }
gui.structs = { }
gui.handlers = { }


gui.handle = CallbackProxy(function(name, callback)
	-- Prepare the name 
	name = name:gsub("_", "-") 

	-- Register the handler
	gui.handlers[name] = callback
end)


-- Functions to create the dytech gui
function gui.create(struct)
	-- Save the given gui struct
	gui.structs[struct.name] = { struct }
end

function gui.set_player(player)
	if gui.player ~= player then
		gui.root = player.gui.top
		gui.player = player
	end
end

function gui.close(name)
	if gui.flow then
		gui.flow.destroy()
		gui.flow = nil
	end
end

function gui.show(player, struct_name)
	-- Close the current gui and set the new receiver
	gui.set_player(player)
	gui.close()

	-- Create a new flow
	gui.flow = gui.root.add 
	{
		type = "flow", 
		name = "dytech-gui-flow",
		direction = "vertical", 
	}

	-- Create gui from a struct
	gui.build_struct(gui.flow, gui.structs[struct_name] or { })

	-- Returns the new flow
	return gui.flow
end

function gui.build_element(parent, data) 
	if data.open and gui.structs[data.open] then
		local gui_struct = data.open

		-- Create a handler for the given element
		gui.handle[data.name] = function(event)
			gui.show(game.players[event.player_index], gui_struct)
		end
	end

	return parent.add {
		type = data.type,
		name = data.name,
		direction = data.direction,

		-- If nothing is set the this does nothing
		caption = data.caption
	}
end

function gui.build_struct(parent, struct)
	for _, element_data in pairs(struct) do
		local element = gui.build_element(parent, element_data)

		-- If we got child elements build them to
		if element_data.childs then
			gui.build_struct(element, element_data.childs)
		end
	end

	-- Add a 'back' button by default?
end


-- Handles all gui events and calls registered handlers
function gui.handle_gui_event(event)
	local player = game.players[event.player_index]

	-- Check if the player is valid and connected
	if player.valid and player.connected then
		local handler = gui.handlers[event.element.name]
		if handler then
			-- Call the handler associated with the gui element
			handler(event)
		end
    end
end





function CreateButton()
	for Index,player in pairs(game.players) do
		if not ButtonChecker(Index) then
			player.gui.top.add({type="button", name="DyTech-Button", caption={"dytech-button"}})
		end
	end
end

function ButtonChecker(Index)
	if game.players[Index].gui.top["DyTech-Button"] then
		return true
	elseif game.players[Index].gui.top["mainDyTechFlow"] then
		return true
	elseif game.players[Index].gui.top["mainDyTechDebugFlow"] then
		return true
	elseif game.players[Index].gui.top["mainDyTechCoreFlow"] then
		return true
	elseif game.players[Index].gui.top["mainDynamicFlow"] then
		return true
	elseif game.players[Index].gui.top["mainResearchFlow"] then
		return true
	elseif game.players[Index].gui.top["mainLotteryFlow"] then
		return true
	elseif game.players[Index].gui.top["mainResearchTableFlow"] then
		return true
	elseif game.players[Index].gui.top["MRSUnlockGUIFrame"] then
		return true
	elseif game.players[Index].gui.top["mainCollectorFlow"] then
		return true
	elseif game.players[Index].gui.top["mainAutoResearcherFlow"] then
		return true
	elseif game.players[Index].gui.top["DyTechPowerFlow"] then
		return true
	elseif game.players[Index].gui.top["mainDyTechWorldFlow"] then
		return true
	else
		return false
	end
end

function showDyTechGUI(PlayerIndex)
local player = game.players[PlayerIndex]
player.gui.top.add({type="flow", direction="vertical", name="mainDyTechFlow"})
player.gui.top["mainDyTechFlow"].add({type="frame", direction="vertical", name="mainDyTechFrame", caption={"dytech-gui"}})
adder = player.gui.top["mainDyTechFlow"]["mainDyTechFrame"]

adder.add({type="button", name="DyTech-Core-Button", caption={"dytech-core"}})
if remote.interfaces["DyTech-Dynamics"] then 
	adder.add({type="button", name="DyTech-Dynamics-Button", caption={"dytech-dynamics"}}) 
end
if remote.interfaces["DyTech-Machine"] then 
	adder.add({type="button", name="DyTech-Machine-Button", caption={"dytech-machine"}}) 
end
if remote.interfaces["DyTech-Power"] then 
	adder.add({type="button", name="DyTech-Power-Button", caption={"dytech-power"}}) 
end
if remote.interfaces["DyTech-Science"] then 
	adder.add({type="button", name="DyTech-Science-Button", caption={"dytech-science"}}) 
end
if remote.interfaces["DyTech-War"] then 
	adder.add({type="button", name="DyTech-War-Button", caption={"dytech-war"}}) 
end
if remote.interfaces["DyTech-World"] then 
	adder.add({type="button", name="DyTech-World-Button", caption={"dytech-world"}}) 
end
if debug_for_GUI then 
	adder.add({type="button", name="DyTech-Debug-Button", caption={"dytech--- debug"}}) 
end
adder.add({type="button", name="DyTech-Close-Button", caption={"close"}})
end

function showDyTechDebugGUI(PlayerIndex)
	local player = game.players[PlayerIndex]
	player.gui.top.add({type="flow", direction="vertical", name="mainDyTechDebugFlow"})
	player.gui.top["mainDyTechDebugFlow"].add({type="frame", direction="vertical", name="mainDyTechDebugFrame", caption={"dytech--- debug-gui"}})
	adder = player.gui.top["mainDyTechDebugFlow"]["mainDyTechDebugFrame"]

	adder.add({type="button", name="DyTech-Debug-Dump-Button", caption="Data Dump"})
	adder.add({type="button", name="DyTech-Debug-TestResource-Button", caption="Test Resources (500x500)"})
	adder.add({type="button", name="DyTech-Debug-TestItems-Button", caption="Give -- debug items"})
	adder.add({type="button", name="DyTech-Debug-Reset-Button", caption="Reset all"})
	adder.add({type="button", name="DyTech-Debug-Technology-Button", caption="Research All"})
	adder.add({type="button", name="DyTech-Debug-Evolution-0-Button", caption="Set Evolution to 0"})
	adder.add({type="button", name="DyTech-Debug-Evolution-1-Button", caption="Set Evolution to 1"})
	adder.add({type="button", name="DyTech-Close-Button", caption={"close"}})
end

function closeGUI(statement, PlayerIndex)
	if statement=="Debug" then
		if game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"] and game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"].valid then
			game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"].destroy()
		end
	elseif statement=="DyTech" then
		if game.players[PlayerIndex].gui.top["mainDyTechFlow"] and game.players[PlayerIndex].gui.top["mainDyTechFlow"].valid then
			game.players[PlayerIndex].gui.top["mainDyTechFlow"].destroy()
		end
	elseif statement=="Core" then
		if game.players[PlayerIndex].gui.top["mainDyTechCoreFlow"] and game.players[PlayerIndex].gui.top["mainDyTechCoreFlow"].valid then
			game.players[PlayerIndex].gui.top["mainDyTechCoreFlow"].destroy()
		end
	elseif statement=="All" then
		if game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"] and game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"].valid then
			game.players[PlayerIndex].gui.top["mainDyTechDebugFlow"].destroy()
		end
		if game.players[PlayerIndex].gui.top["mainDyTechFlow"] and game.players[PlayerIndex].gui.top["mainDyTechFlow"].valid then
			game.players[PlayerIndex].gui.top["mainDyTechFlow"].destroy()
		end
		if game.players[PlayerIndex].gui.top["mainDyTechCoreFlow"] and game.players[PlayerIndex].gui.top["mainDyTechCoreFlow"].valid then
			game.players[PlayerIndex].gui.top["mainDyTechCoreFlow"].destroy()
		end
	end
end


return gui
