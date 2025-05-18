---@class LazySpec
return {
	"folke/neoconf.nvim",
	name = "neoconf",
    enabled = false,
	config = function(plugin, opts)
		local neoconf = require(plugin.name)
		neoconf.setup()
	end
}
