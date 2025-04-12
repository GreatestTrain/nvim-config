return {
	"folke/neoconf.nvim",
	name = "neoconf",
	config = function(plugin, opts)
		local neoconf = require(plugin.name)
		neoconf.setup()
	end
}
