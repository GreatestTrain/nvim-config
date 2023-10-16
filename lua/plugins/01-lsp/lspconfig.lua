local M = {}

M[1] = 'neovim/nvim-lspconfig'
M.name = 'lspconfig'

M.dependencies = {
	'neodev',
}

local ok, conf = pcall(require, 'configs.lsp.lspconfig')
M.opts = function()
 local fn = ok and conf or {}
 if type(fn) == "function" then
	 return fn(require('cmp_nvim_lsp').default_capabilities())
 end
end

M.config = function(plugin, opts)
	local lspconfig = require(plugin.name)
	for server, config in pairs(opts) do
		lspconfig[server].setup(config)
	end
end

return M
