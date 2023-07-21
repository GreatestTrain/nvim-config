local M = {}

M[1] = 'williamboman/mason.nvim'
M.dependencies = {
	'lspconfig',
	"williamboman/mason-lspconfig.nvim",
}

M.opts = {
	ensure_installed = {'lua_ls'}
}

return M
