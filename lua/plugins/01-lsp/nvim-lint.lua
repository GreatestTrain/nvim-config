-- nvim-lint
-- plugin specification

---@type Plugin
local M = {}

M[1] = 'mfussenegger/nvim-lint'
M.name = 'lint'

local ok, conf = pcall(require, 'configs.lsp.nvim-lint')
M.opts = ok and conf or {}

M.config = function (plugin, opts)
	local lint = require(plugin.name)
	for key, values in pairs(opts) do
		lint[key] = values
	end
end

return M
