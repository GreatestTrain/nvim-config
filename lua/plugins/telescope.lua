---@module 'plugin_spec'

---@type Plugin
local M = {}

M[1] = 'nvim-telescope/telescope.nvim'

M.name = 'telescope'
M.dependencies = {
	'plenary',
	{'nvim-telescope/telescope-symbols.nvim', name = 'telescope-symbols' },
	{ 'LukasPietzschmann/telescope-tabs', name = 'telescope-tabs' }
}

M.tag = '0.1.2'

local ok, conf = pcall(require, 'configs.telescope')
M.opts = ok and conf or {}

return M
