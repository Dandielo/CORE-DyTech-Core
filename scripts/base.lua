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
	-- local interfaces = { }

	-- The mod Interface
	return setmetatable({
		-- Return a callback proxy to the 'remote' game object api
		interface = function(self, name) 
			local interface_name = name
			local interface = { }
			-- interfaces[name] = interface

			local proxy = CallbackProxy(function(name, callback) 
				interface[name] = callback
			end)
			rawset(proxy, "register", function()
				remote.add_interface(name, interface)
			end)
			return proxy
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
	}, { 
		__newindex = function(self, name, value)
			if name == "init" then
				script.on_init(value)

			elseif name == "load" then
				script.on_load(value)

			elseif name == "configuration_changed" then
				script.on_configuration_changed(value)

			elseif name:match("([a-zA-Z]+)_?.*") == "on" then
				script.on_event(defines.events[name], value)

			else 
				rawset(self, name, value)

			end
		end
	})
end