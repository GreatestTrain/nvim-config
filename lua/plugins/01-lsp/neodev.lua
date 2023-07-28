local M = {}

M[1] = 'folke/neodev.nvim'
M.name = 'neodev'

M.opts = {
	library = {
		enabled = true,
		runtime = true,
		plugins = { "nvim-dap-ui", "plenary", "telescope" },
		types = true,
	},
	setup_jsonls = true,
	lspconfig = true,
	pathStirct = true,

}

return M
