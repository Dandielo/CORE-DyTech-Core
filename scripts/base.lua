local remote_mt = { }
remote_mt.__index = remote_mt
local global_interfaces = { }

function remote_mt.add_interface(name, funcs)
	global_interfaces[name] = funcs
end

function remote_mt.call(name, func, ...)
	global_interfaces[name][func](...)
end

local remote = setmetatable({ }, remote_mt)
remote.interfaces = global_interfaces


local script = { }
function script.on_init(callback)
	print("OnInit: " .. tostring(callback))
	callback("OnInit")
end

function script.on_load(callback)
	print("OnLoad: " .. tostring(callback))
	callback("OnLoad")
end

function script.on_configuration_changed(callback)
	print("OnConfiguration: " .. tostring(callback))
	callback("OnConfig")
end

function script.on_event(name, callback)
	print(("OnEvent { name = %s, callback = %s }"):format(name, tostring(callback)))
end



-- Create the proxy object for the given destination info
local CallbackProxy = function(func)
	return setmetatable({ }, { 
		__newindex = function(_, name, callback)
			func(name, callback)
		end
	})
end

local CallProxy = function(func)
	return setmetatable({ }, { 
		__index = function(self, name)
			self[name] = func(name)
			return self[name]
		end
	})
end

DyTechMod = function()
	-- Mod interface fields
	local interfaces = { }

	-- The mod Interface
	return setmetatable({
		-- Return a callback proxy to the 'remote' game object api
		interface = function(self, name) 
			local interface = { }
			interfaces[name] = interface

			return CallbackProxy(function(name, callback) 
				interface[name] = callback
			end)
		end,

		-- Returns a call proxy to return interface functions 
		import = function(self, name)
			local interface_name = name
			-- assert(remote.interfaces[interface_name] ~= nil, ("Interface '%s' does not exists, import failed!"):format(interface_name))
			if remote.interfaces[interface_name] then
				return CallProxy(function(func_name)
					assert(remote.interfaces[interface_name][func_name] ~= nil, ("Interface function '%s' does not exists!"):format(interface_name .. "::" .. func_name))
					return function(...)
						remote.call(interface_name, func_name, ...)
					end
				end)
			else 
				return nil
			end
		end,

		-- Registers the interface of this plugin
		register = function(self) 
			for interface, functions in pairs(interfaces) do
				assert(remote.interfaces[interface] == nil, ("Interface '%s' exists, registration failed!"):format(interface))
				remote.add_interface(interface, functions)
			end
		end
	}, { 
		__newindex = function(self, name, value)
			if name == "init" then
				script.on_init(value)

			elseif name == "load" then
				script.on_load(value)

			elseif name == "configuration_changed" then
				script.on_configuration_changed(value)

			elseif name:match("([a-zA-Z]+)_?.*") == "on" then
				local defines = { events = setmetatable({}, { 
					__index = function(_, key) 
						return key
					end 
					}) 
				}
				script.on_event(defines.events[name], value)

			else 
				rawset(self, name, value)

			end
		end
	})
end

-- Register the DyTechCore mod object
remote.add_interface("DyTechCore", { 
	createMod = DyTechMod
})

-- local mod = DyTechMod("Core")


-- local remote = mod:interface("test")

-- function remote.my_func(a)
-- 	print("MyFunc" .. a)
-- end

-- mod:register()

-- local test = mod:import("test")
-- test.my_func(3)

-- mod:register()


-- local test = mod:import("test")
-- if test then
-- 	test.my_func()
-- end


-- example = function()

-- 	remote.add_interface("Trees", {
-- 		hello = function(msg) print("Trees say hello to " .. msg) end,
-- 		bye = function(msg) print("Trees say bye to " .. msg) end
-- 	})

-- 	remote.call("Trees", "hello", "cookie")
-- 	remote.call("Trees", "bye", "cookie")

-- end



