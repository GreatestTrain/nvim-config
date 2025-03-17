local m = {}

m[1] 		= "neovim/nvim-lspconfig"
m.lazy 		= false
m.priority 	= 1000
m.config	= function (plugin, opts)
	local lspconfig = require 'lspconfig'
	for _, server in ipairs(opts) do
		lspconfig[server[1]].setup(server)
	end
end
m.opts		= require 'config.nvim-lspconfig' or nil

return m
