-- nabla
-- plugin specification
-- See: https://github.com/jbyuki/nabla.nvim

---@type Plugin
local M = {}

M[1] = 'jbyuki/nabla.nvim'
M.name = 'nabla'
M.dependencies = { 'treesitter' }
M.ft = {'latex', 'markdown', 'plaintex'}
M.config = function (_)
	require(_.name).enable_virt({
		autogen = true,
		silent = true,
	})
end

return M
