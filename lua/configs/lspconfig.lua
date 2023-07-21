-- Configs for lsp servers - loaded by nvim-lspconfig

local M = {}

M.lua_ls = {
	diagnostics = { globals = 'vim' },
	workspace = {
		library = vim.api.nvim_get_runtime_file("", true),
		checkThirdParty = false,
	},

}

M.clangd 	= {}
M.pyright 	= {}
M.julials 	= {}
M.html 		= {}
M.opencl_ls 	= {}

return M
