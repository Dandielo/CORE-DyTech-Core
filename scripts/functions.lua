module("fs", package.seeall)

function World_Call()
	if remote.interfaces["DyTech-World"] then
	global.Normal_Loot = {"sand","rubber-seed","sulfur-seed","resin","sulfur-wood","crystal","raw-ruby","raw-emerald","raw-sapphire","raw-topaz","raw-diamond"}
	global.Special_Loot = {"cut-ruby","cut-emerald","cut-sapphire","cut-topaz","cut-diamond","compressed-ruby","compressed-emerald","compressed-sapphire","compressed-topaz","compressed-diamond"}
		for _,name in pairs(global.Normal_Loot) do
			remote.call("DyTech-World", "Loot_Table_Insert", name)
		end
		for _,name in pairs(global.Special_Loot) do
			remote.call("DyTech-World", "Special_Loot_Table_Insert", name)
		end
	end
	global.Normal_Loot = {}
	global.Special_Loot = {}
end

function Timer(event)
	if not global.timer then global.timer={seconds=0, minutes=0, hours=0} end
	if event.tick%60==0 then
		global.timer.seconds = global.timer.seconds + 1
	end
	if global.timer.seconds==60 then
		global.timer.seconds = 0
		global.timer.minutes = global.timer.minutes + 1
	end
	if global.timer.minutes==60 then
		global.timer.minutes = 0
		global.timer.hours = global.timer.hours + 1
	end
end
