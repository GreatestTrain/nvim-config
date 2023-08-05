-- Neogen plugin specification
-- See: https://github.com/danymat/neogen

---@class Plugin
local M = {}

M[1] = 'danymat/neogen'
M.name = 'neogen'
M.dependencies = { 'treesitter', 'luasnip' }

M.config = function(plugin, _)
	local neogen = require(plugin.name)
	neogen.setup {
		snippet_engine = 'luasnip',
		enabled = true,
	}
end

return M
