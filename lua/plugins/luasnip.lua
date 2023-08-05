-- Luasnip plugin specification

---@class Plugin
local M = {}

M[1] = "L3MON4D3/LuaSnip"
M.name = 'luasnip'
M.dependencies = {
	"rafamadriz/friendly-snippets"
}
M.version = "2.*"
M.build = "make install_jsregexp"

M.config = function(plugin, opts)
	require(plugin.name).setup(opts)
	require("luasnip.loaders.from_vscode").lazy_load()
	require("luasnip.loaders.from_snipmate").lazy_load()
	-- load lua snippets
end

return M
