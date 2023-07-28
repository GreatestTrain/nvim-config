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
---@param mapping Mapping[]
---@param desc string
Action.new = function(func, mapping, desc)
	local instance = setmetatable({}, Action)
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

function Action:set_key(mode, key, opt)
	self.mode = mode
	self.key = key

	vim.keymap.set(mode, key, self.func, opt)
end

function Action:unset_key()
end

return Action
