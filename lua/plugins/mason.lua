---@class LazySpec
return {
	"williamboman/mason.nvim",
	name = "mason",
	dependencies = { "williamboman/mason-lspconfig", name = "mason-lspconfig" },
	config = function(plugin, opts)
		local mason = require(plugin.name)
		mason.setup()
		require("mason-lspconfig").setup()
	end
}
