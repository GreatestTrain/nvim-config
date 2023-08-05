-- Configs for lsp servers - loaded by nvim-lspconfig

local M = {}

M.lua_ls = {}
M.clangd 		= {}
M.pyright 		= {}
M.julials 		= {}
M.html 			= {}
M.opencl_ls 	= {}
M.marksman 		= {}
M.awk_ls 		= {}
M.bashls 		= {}
M.jsonls 		= {}

return function(capabilities)
	if capabilities == nil then return M end
	for _, config in pairs(M) do
		 config.capabilities = capabilities
	end
	return M
end
