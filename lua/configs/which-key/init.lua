local M = {}

local ok, wk = pcall(require, 'which-key')

if ok then
	M[#M+1] = require 'configs.which-key.lsp'
end

function M.setup()
	for _, spec in ipairs(M) do
		wk.register(spec.mappings, spec.opts)
	end
end

return M
