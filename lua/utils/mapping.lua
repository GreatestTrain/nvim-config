---@class Action
local Action = require 'utils.action'

---@class Mapping
local Mapping = {
	mode = nil,
	key = nil,
	opt = {},

}
Mapping.__index = {}

---@param mode string|string[]
---@param key string|string[]
---@param opt string|string[]
function Mapping:new(mode, key, opt)
	local instance = setmetatable({}, self)
	if mode == nil or key == nil then
		error("Neither mode and key can be nil.", 100)
	end

	instance.mode = mode
	instance.key = key
	instance.opt = opt or { silent = true }
	return instance
end

function Mapping:unset()
	vim.keymap.del(self.mode, self.key, self.opt)
end


---@param mapping Mapping|table
function Mapping:add(mapping)
	if getmetatable(mapping) == Mapping then
		table.insert(self.mode, mapping.mode)
	end
end

return Mapping
