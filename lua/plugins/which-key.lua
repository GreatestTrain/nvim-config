---@module 'plugin_spec'

---@type Plugin
local M = {
	'folke/which-key.nvim',
	init = function() vim.o.timeout = true; vim.opt.timeoutlen = 300; end,
	name = 'which-key',
		config = function(plugin, opts)
		require (plugin.name).setup(opts)
		local ok, keys = pcall(require, 'configs.mappings')
		if ok then
			keys.setup()
		end
	end,
}

return M
