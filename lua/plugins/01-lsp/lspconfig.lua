local M = {}

local ok, conf = pcall(require, 'configs.lsp.lspconfig')

M[1] = 'neovim/nvim-lspconfig'
M.name = 'lspconfig'

M.dependencies = {
	'neodev',
}

-- M.opts = require 'configs.lspconfig'
M.opts = ok and conf or {}

M.config = function(plugin)
	local lspconfig = require(plugin.name)
	local ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
	local capabilities = nil
	if ok then
		capabilities = cmp_nvim_lsp.default_capabilities()
	end
	for server, config in pairs(plugin.opts(capabilities)) do
		lspconfig[server].setup(config)
	end
end

return M
