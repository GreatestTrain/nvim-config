---@module 'plugin_spec'

---@type Plugin
local M = {}

M[1] = 'nvim-telescope/telescope.nvim'

M.name = 'telescope'
M.dependencies = {
	'plenary',
	{'nvim-telescope/telescope-symbols.nvim', name = 'telescope-symbols.nvim' }
}

M.tag = '0.1.2'

return M
