-- scope.nvim
-- plugin specificaction
-- See: https://github.com/tiagovla/scope.nvim
-------------------------------------------------

-- Unifies tabs with buffers making it simplier to work with.
--

---@type Plugin
local M = {}

M[1] = 'tiagovla/scope.nvim'
M.name = 'scope'
M.dependencies = { 'telescope' }

function M.config(plugin, opts)
	require(plugin.name).setup(opts)
	local telescope = require 'telescope'
	---@diagnostic disable-next-line: undefined-field
	telescope.load_extension(plugin.name)
end

return M
