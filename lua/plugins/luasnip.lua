-- Luasnip plugin specification

local M = {}

M[1] = "L3MON4D3/LuaSnip"
M.name = 'luasnip'
M.dependencies = {
	"rafamadriz/friendly-snippets"
}
M.version = "2.*"
M.build = "make install_jsregexp"

M.config = function(plugin, opts)
	require("luasnip").setup(opts)
	require("luasnip.loaders.from_vscode").lazy_load()
	require("luasnip.loaders.from_vscode").lazy_load({
		paths = {
			"$HOME/.config/Code - OSS/User/snippets/",
			"$HOME/.config/Code/User/snippets/",
		}
	})
	require("luasnip.loaders.from_snipmate").lazy_load()
	-- load lua snippets
end

return M
