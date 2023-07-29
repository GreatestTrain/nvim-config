---@class Mapping
local Mapping = {
	mode = nil,
	key = nil,
	opt = { silent = true },

}
Mapping.__index = Mapping

---@param mode string|string[]
---@param key string|string[]
---@param opt table
function Mapping:new(mode, key, opt)
	local instance = setmetatable({}, self)
	if mode == nil or key == nil then
		error("Neither mode and key can be nil.", 100)
	end

	instance.mode = mode
	instance.key = key
	instance.opt = opt
	return instance
end

function Mapping:unset()
	vim.keymap.del(self.mode, self.key, self.opt)
end


---@param mapping Mapping|table
function Mapping:add(mapping)
	if getmetatable(mapping) == Mapping then
		table.insert(self.mode, mapping.mode)
		table.insert(self.key, mapping.key)
		table.insert(self.opt, mapping.opt)
	end
end

return Mapping
