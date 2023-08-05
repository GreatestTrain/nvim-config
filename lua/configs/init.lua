local M = {}

M['mappings'] = require 'configs.mappings'

function M.setup()
	for _, config in pairs(M) do
		if type(config) == "table" then
			config.setup()
		end
	end
end

return M
