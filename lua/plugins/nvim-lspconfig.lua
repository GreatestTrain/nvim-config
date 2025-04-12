local m = {}

m[1] 		= "neovim/nvim-lspconfig"
-- m[1] 		= "/usr/share/nvim/site/pack/dist/start/lspconfig/"
m.name 		= "lspconfig"
m.dependencies = { "neoconf", "cmp", "mason" }
m.lazy 		= false
m.priority 	= 1000
m.config	= function (plugin, opts)
	local lspconfig = require(plugin.name)
	local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities()
	for _, server in ipairs(opts) do
		lspconfig[server[1]].setup(vim.tbl_extend("keep", {capabilities = cmp_capabilities}, server))
	end
end
m.opts		= require 'config.nvim-lspconfig' or nil

return m
