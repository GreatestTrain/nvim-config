local M = {}

local ok, conf = pcall(require, 'configs.lsp.dap')

M[1] = 'mfussenegger/nvim-dap'
M.name = 'dap'

M.opts = (ok) and conf or {}

M.config = function (plugin)
	local dap = require(plugin.name)
	for adapter, config in pairs(plugin.opts) do
		dap.adapters[adapter] = config
	end
end

return M
