-- configs.lsp.lspconfig
-- Configs for lsp servers - loaded by nvim-lspconfig

local M = {}

M.efm = {
	cmd = {
		vim.fn.stdpath("data") .. '/mason/bin/efm-langserver',
		'-c',
		vim.fn.stdpath('config') .. '/efm.yaml'
	},
	filetypes = { 'c', 'cpp', 'python', 'html', 'json', 'yaml', 'toml', 'sh', 'markdown', 'tex', 'typescript', 'awk' },
	init_options = { documentFormatting = true , documentRangeFormatting = true }

}

M.bashls = {}
M.lua_ls    = {}
M.ltex 	= {}
M.texlab 	= {}
M.clangd    = {}
M.cmake 	= {}
M.dockerls 	= {}
M.pyright 	= {}
M.julials   = {}
M.html      = {}
M.opencl_ls = {}
M.marksman  = {}
M.awk_ls    = {}
M.bashls    = {}
M.jsonls    = {}
M.lemminx 	= {}
M.yamlls 	= {}
M.taplo 	= {}
M.cssls 	= {}
M.tsserver 	= {}
M.rust_analyzer = {}

return function(capabilities)
	if capabilities == nil then return M end
	for _, config in pairs(M) do
		config.capabilities = capabilities
	end
	return M
end
