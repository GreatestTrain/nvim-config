local M = {}

M[1] = 'neovim/nvim-lspconfig'
M.name = 'lspconfig'

M.dependencies = { 'neodev' , 'mason' }

M.opts = require 'configs.lspconfig'

M.event = { 'InsertEnter' }

M.config = function(plugin, opts)
	local lspconfig = require(plugin.name)
	for server, config in pairs(opts) do
		lspconfig[server].setup(config)
	end
end

return M
