local M = {}

local ok, wk = pcall(require, 'which-key')

if ok then
	M[#M+1] = require 'configs.mappings.lsp'
	M[#M+1] = require 'configs.mappings.ui'
end

function M.setup()
	for _, spec in ipairs(M) do
		if spec then
			wk.register(spec.mappings, spec.opts)
		end
	end
end

return M
