local M = {}

M[1] = 'williamboman/mason.nvim'
M.name = 'mason'
M.dependencies = {
	'lspconfig',
}

M.opts = {
	ensure_installed = {'lua_ls', 'clangd', 'pyright', 'marksman'}
}

return M
