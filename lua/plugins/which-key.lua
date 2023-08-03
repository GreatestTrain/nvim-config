---@module 'plugin_spec'

---@type Plugin
local M = {
	'folke/which-key.nvim',
	name = 'which-key',
		config = function(plugin, opts)
		require (plugin.name).setup(opts)
		local ok, keys = pcall(require, 'configs.which-key')
		if ok then
			keys.setup()
		end
	end,
}

return M
