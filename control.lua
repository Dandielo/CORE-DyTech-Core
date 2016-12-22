require "config"
require "scripts/core-gui"
require "scripts/functions"
require "scripts/gui"
require "scripts/remote-calls"

require "scripts/base"
require "scripts/helpers"

-- Dytech and external mods
local dytech = { }
local external = { }

-- DyTech Core mod object
local core = DyTechMod("Core")

-- Load the treefarm script info the core mod
core.treefarm = require "scripts/treefarm"

-- Should we turn on debug logging?
core.__debug = true

function core.log(msg, ...)
	if core.__debug then
		log(("[dytech][core] %s"):format(msg:format(...)))
	end
end

function core.print(message, ...)
	for _, player in pairs(game.players) do
		player.print(message:format(...))
	end
end

function core.setup()
	-- Initialize the global table if needed with the following data
	initialize_table(global, 
	{
		-- Timer
		timer = { 
			seconds = 0,
			minutes = 0,
			hours = 0,
		},

		-- Mod Loggers
		Logger = { 
			-- Item loggers
			CraftedItems = { },
			PickedItems = { },
			MinedItems = { },

			-- Entity loggers
			EntityDied = { },
			BuildEntity = { },
			
			-- Robot specific loggers 
			RobotBuildEntity = { },
			RobotMinedItems = { },

			-- Construction loggers
			MarkedForDeconstruction = { },
			CanceledDeconstruction = { },
		},

		-- Mod Timestamps
		TimeStamp = {
			-- Item loggers
			CraftedItems = { },
			PickedItems = { },
			MinedItems = { },

			-- Entity loggers
			EntityDied = { },
			BuildEntity = { },
			
			-- Robot specific loggers 
			RobotBuildEntity = { },
			RobotMinedItems = { },

			-- Construction loggers
			MarkedForDeconstruction = { },
			CanceledDeconstruction = { },
		}
	})
end

function core.setup_treefarm()
	core.treefarm.init()

	-- Add all seeds to the list
	for _, seed in pairs(core.treefarm.seeds()) do 
		core.treefarm.add_seed(seed)
	end

	-- Setup callbacks
	core.on_built_entity = core.treefarm.on_built_entity
	core.on_robot_built_entity = core.treefarm.on_built_entity
end


-- Modding API 
function core.load()
	external.treefarm = core:import("treefarm_interface")

	-- Check if we found the 'treefarm' mod 
	if not external.treefarm then
		core.treefarm.init()
	end
	-- core.log "Loading DyTech mods..." 

	-- -- For each enabled mod call it's 'load' interface
	-- for mod in pairs(dytech) do
	-- 	core.log("- " .. mod .. " is enabled")
	-- end

	-- -- Add core to the dytech mods table
	-- dytech.core = core

	-- -- 
end

function core.init()
	-- setup the mod
	core.setup()

	-- Check if we found the 'treefarm' mod 
	local treefarm = core:import("treefarm_interface")
	if treefarm and treefarm.getSeedTypesData then
		
		-- Add all seeds to the 'treefarm' mod
		for _, seed in pairs(core.treefarm.seeds()) do 
			treefarm.addSeed(seed)
		end

		-- Save the interface object
		external.treefarm = treefarm

	else 
		-- Enable build-in tree module
		core.setup_treefarm()
	end

	-- setups
	fs.World_Call()
	fs.Wind_Startup()
end

function core.configuration_changed()
	-- setup the mod
	core.setup()
	
	-- On a configuration changes we want to reset all recipes and technologies to apply any changes made to them
	for _, force in pairs(game.forces) do
		force.reset_recipes()
		force.reset_technologies()
	end

	-- Check if we found the 'treefarm' mod 
	local treefarm = core:import("treefarm_interface")
	if treefarm and treefarm.getSeedTypesData then

		-- Add all seeds that are not present in the 'treefarm' mod
		for _, seed in pairs(core.treefarm.seeds()) do 
			if not treefarm.readSeed(seed.name) then
				treefarm.addSeed(seed)
			end
		end

		-- Save the interface object
		external.treefarm = treefarm

	else 
		-- Enable build-in tree module
		core.setup_treefarm()
	end

	if not global.Wind then 
		fs.Wind_Startup() 
	end
end

function core.on_tick(event)
	-- Update the timer
	fs.Timer(event)
	
	-- (Re)Create/Update the gui every 10 seconds?
	if event.tick % 600 == 1 then
		GUI.CreateButton()
	end

	-- If the treefarm mod is not enabled
	if not external.treefarm then
		core.treefarm.on_tick(event)
	end
end

function core.on_built_entity(event)
	-- If the treefarm mod is not enabled
	if not external.treefarm then
		core.treefarm.on_built_entity(event)
	end
end

function core.on_robot_built_entity(event)
	-- If the treefarm mod is not enabled
	if not external.treefarm then

		-- We can use the same handler as if a player has placed the tree
		core.treefarm.on_built_entity(event)
	end
end



-- DyTech Core interface
local iface = core:interface("dytech-core-iface")

function iface.set_enabled(name, iface)
	dytech[name] = core:import(iface)
end

iface.register()


-- Set the old name as the new function
PlayerPrint = core.print




function core.on_gui_click(event)
	local playerIndex = event.player_index
	local player = game.players[playerIndex]
	-- fs.LoggerCount("GUI", 1)
	-- debug("GUI: Player "..playerIndex.." clicked "..event.element.name)
	if event.element.name == "DyTech-Button" then
		player.gui.top["DyTech-Button"].destroy()
		GUI.showDyTechGUI(playerIndex)
	elseif event.element.name == "DyTech-Debug-Button" then
		GUI.closeGUI("DyTech", playerIndex)
		GUI.showDyTechDebugGUI(playerIndex)
	elseif event.element.name == "DyTech-Debug-Dump-Button" then
		GUI.closeGUI("All", playerIndex)
		GUI.CreateButton()
		-- remote.call("DyTech-Core", "Logger")
		-- if remote.interfaces["DyTech-Dynamics"] then remote.call("DyTech-Dynamics", "DataDump") end
		-- if remote.interfaces["DyTech-Machine"] then remote.call("DyTech-Machine", "DataDump") end
		-- if remote.interfaces["DyTech-Power"] then remote.call("DyTech-Power", "DataDump") end
		-- if remote.interfaces["DyTech-War"] then remote.call("DyTech-War", "DataDump") end
		-- if remote.interfaces["DyTech-World"] then remote.call("DyTech-World", "Logger") end
	elseif event.element.name == "DyTech-Debug-TestItems-Button" then
		GUI.closeGUI("All", playerIndex)
		GUI.CreateButton()
		RemoteCalls.TestMapStart(playerIndex)
	elseif event.element.name == "DyTech-Debug-TestResource-Button" then
		GUI.closeGUI("All", playerIndex)
		GUI.CreateButton()
		RemoteCalls.CheckOreRatio(500, playerIndex)
	elseif event.element.name == "DyTech-Debug-Reset-Button" then
		GUI.closeGUI("All", playerIndex)
		GUI.CreateButton()
		remote.call("DyTech-Core", "ResetAll")
	elseif event.element.name == "DyTech-Debug-Technology-Button" then
		GUI.closeGUI("All", playerIndex)
		GUI.CreateButton()
		fs.ResearchAll()
	elseif event.element.name == "DyTech-Debug-Evolution-0-Button" then
		GUI.closeGUI("All", playerIndex)
		GUI.CreateButton()
		game.evolution_factor = 0
	elseif event.element.name == "DyTech-Debug-Evolution-1-Button" then
		GUI.closeGUI("All", playerIndex)
		GUI.CreateButton()
		game.evolution_factor = 1
	elseif event.element.name == "DyTech-Close-Button" then
		GUI.closeGUI("All", playerIndex)
		GUI.CreateButton()
	elseif event.element.name == "DyTech-Core-Button" then
		GUI.closeGUI("All", playerIndex)
		Core_GUI.showCoreGUI(playerIndex)
	elseif event.element.name == "DyTech-Core-Back-Button" then
		GUI.closeGUI("Core", playerIndex)
		GUI.showDyTechGUI(playerIndex)
	end
end

-- [[script.on_event(defines.events.on_gui_click, function(event)
-- local playerIndex = event.player_index
-- local player = game.players[playerIndex]
	-- if event.element.name == "DyTech-Power-Button" then
		-- remote.call("DyTech-Core", "CloseMainGUI", playerIndex)
		-- -- open de Power gui hier
	-- end
--end)]]

remote.add_interface("DyTech-Core",
{  
	ResetAll = function()
		for _,player in pairs(game.players) do
			player.force.reset_recipes()
			player.force.reset_technologies()
		end
	end,
  
	TestTrees = function(pIndex)
		if pIndex == 0 then
			for i,_ in ipairs(game.players) do
				RemoteCalls.TestTrees(i)
			end
		elseif game.players[pIndex] == nil then return
		else
			RemoteCalls.TestTrees(pIndex)
		end
	end,
  
	TestMapStart = function(pIndex)
		if pIndex == 0 then
			for i,_ in ipairs(game.players) do
				RemoteCalls.TestMapStart(i)
			end
		elseif game.players[pIndex] == nil then return
		else
			RemoteCalls.TestMapStart(pIndex)
		end
	end,
  
	Regenerate = function(name)
		RemoteCalls.Regenerate(name)
	end,
	
	Timer = function(name)
		return global.timer[name]
	end,
	
	-- Logger = function()
		-- game.makefile("DyTech/DataDump/Core-Wind.txt", serpent.block(global.Wind))
		-- game.makefile("DyTech/DataDump/Core-Technologies.txt", serpent.block(global.Logger.Technology))
		-- game.makefile("DyTech/DataDump/Core-RobotBuildEntity.txt", serpent.block(global.Logger.RobotBuildEntity))
		-- game.makefile("DyTech/DataDump/Core-BuildEntity.txt", serpent.block(global.Logger.BuildEntity))
		-- game.makefile("DyTech/DataDump/Core-PickedItems.txt", serpent.block(global.Logger.PickedItems))
		-- game.makefile("DyTech/DataDump/Core-CanceledDeconstruction.txt", serpent.block(global.Logger.CanceledDeconstruction))
		-- game.makefile("DyTech/DataDump/Core-MarkedForDeconstruction.txt", serpent.block(global.Logger.MarkedForDeconstruction))
		-- game.makefile("DyTech/DataDump/Core-EntityDied.txt", serpent.block(global.Logger.EntityDied))
		-- game.makefile("DyTech/DataDump/Core-RobotMinedItems.txt", serpent.block(global.Logger.RobotMinedItems))
		-- game.makefile("DyTech/DataDump/Core-MinedItems.txt", serpent.block(global.Logger.MinedItems))
		-- game.makefile("DyTech/DataDump/Core-CraftedItems.txt", serpent.block(global.Logger.CraftedItems))
		-- game.makefile("DyTech/DataDump/TimeStamp/Core-RobotBuildEntity.txt", serpent.block(global.TimeStamp.RobotBuildEntity))
		-- game.makefile("DyTech/DataDump/TimeStamp/Core-BuildEntity.txt", serpent.block(global.TimeStamp.BuildEntity))
		-- game.makefile("DyTech/DataDump/TimeStamp/Core-PickedItems.txt", serpent.block(global.TimeStamp.PickedItems))
		-- game.makefile("DyTech/DataDump/TimeStamp/Core-CanceledDeconstruction.txt", serpent.block(global.TimeStamp.CanceledDeconstruction))
		-- game.makefile("DyTech/DataDump/TimeStamp/Core-MarkedForDeconstruction.txt", serpent.block(global.TimeStamp.MarkedForDeconstruction))
		-- game.makefile("DyTech/DataDump/TimeStamp/Core-EntityDied.txt", serpent.block(global.TimeStamp.EntityDied))
		-- game.makefile("DyTech/DataDump/TimeStamp/Core-RobotMinedItems.txt", serpent.block(global.TimeStamp.RobotMinedItems))
		-- game.makefile("DyTech/DataDump/TimeStamp/Core-MinedItems.txt", serpent.block(global.TimeStamp.MinedItems))
		-- game.makefile("DyTech/DataDump/TimeStamp/Core-CraftedItems.txt", serpent.block(global.TimeStamp.CraftedItems))
		-- game.makefile("DyTech/Log/Core.txt", serpent.block(global.Log))
		-- game.makefile("DyTech/Config/Core.txt", serpent.block(Config))
	-- end,
	
	TimerIncrease = function(Hour, Minute, Second)
		global.timer.hours = global.timer.hours + Hour
		global.timer.minutes = global.timer.minutes + Minute
		global.timer.seconds = global.timer.seconds + Second
	end,
	
	FindResources = function(Amount)
		RemoteCalls.CheckOreRatio(Amount)
	end,
	
	ChangeWind = function()
		local direction = math.random()
		game.wind_orientation = direction
		PlayerPrint(tostring(game.wind_orientation))
	end,
	
	OpenMainGUI = function(PlayerIndex)
		GUI.showDyTechGUI(PlayerIndex)
	end,
	
	CloseMainGUI = function(PlayerIndex)
		GUI.closeGUI("DyTech", PlayerIndex)
	end,
	
	ShowMainButton = function()
		GUI.CreateButton()
	end,
	
	RecipesIngredients = function()
		RemoteCalls.RecipesIngredients()
	end
})
---------------------------------------- Looting Enemy Corpse ----------------------------------
-- function writeDebug(message)
      -- for key, player in pairs(game.players) do
         -- player.print(tostring(message))
      -- end
-- end


-- script.on_event(defines.events.on_entity_died, function(event)
	-- if event.entity.type == "unit" then
		-- local POS = event.entity.position
		-- writeDebug(event.entity.name)
		-- writeDebug(POS.x)
		-- writeDebug(POS.y)
		-- local LOOTLIST = {}
		-- local RANGE = 64
		-- local Chests = game.surfaces[1].find_entities_filtered{area={{POS.x-RANGE, POS.y-RANGE},{POS.x+RANGE, POS.y+RANGE}},name="loot-chest"}
		
		-- if Chests[1] ~= nil then
			-- local PickedChest = Chests[math.random(#Chests)]
			-- writeDebug(PickedChest.position.x)
			-- writeDebug(PickedChest.position.y)
			-- local ChestPOS = PickedChest.position
			-- local LOOT = game.surfaces[1].find_entities_filtered{area={{ChestPOS.x-RANGE, ChestPOS.y-RANGE},{ChestPOS.x+RANGE, ChestPOS.y+RANGE}}, type="item-entity"}
			-- for _, item in pairs(LOOT) do
				-- if item.valid and item.stack.valid and item.to_be_looted  then
						-- table.insert(LOOTLIST, {name = item.stack.name, count = item.stack.count}) --inserts the LuaSimpleStack table (of name and count) to the artifacts list for later use
						-- item.destroy()
				-- end
			-- end
			-- if LOOT ~= nil then
				-- writeDebug(PickedChest.name)
				-- for _, itemStack in pairs(LOOTLIST) do
					-- if(PickedChest.can_insert(itemStack)) then 
						-- PickedChest.insert(itemStack)
					-- end								
				-- end
			-- end
		-- end
	-- end
	
-- end)

