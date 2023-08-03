local M = {}

M['which-key'] = require 'configs.which-key'

function M.setup()
	for _, config in pairs(M) do
		if type(config) == "table" then
			config.setup()
		end
	end
end

return M
