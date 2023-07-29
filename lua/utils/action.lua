---@class Mapping
local Mapping = require 'utils.mapping'
---@class Action
local Action = {
	func = function () end,
	mappings = {},
	desc = "",
}
Action.__index = Action

---@param func function
---@param mapping Mapping[]|nil
---@param desc string
function Action:new(func, mapping, desc)
	local instance = setmetatable({}, self)
	if type(func) == "function" then
		instance.func = func
	end

	if type(func) == "string" then
		instance.func = function ()
			vim.cmd(func)
		end
	end

	if type(mapping) == "table" then
		instance.mappings = mapping
	else
		instance.mappings = { mapping }
	end
	if type(desc) == "string" then
		instance.desc = desc
	end

	return instance
end

---@param mapping Mapping
function Action:set_key(mapping)
	if getmetatable(mapping) ~= Mapping then
		error("<mapping> must be of type Mapping.", 103)
	end
	vim.keymap.set(mapping.mode, mapping.key, self.func, mapping.opt)
end

function Action:unset_key()
	self.mappings.unset_key()
end

return Action
