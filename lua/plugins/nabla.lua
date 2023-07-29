local M = {}

M[1] = 'jbyuki/nabla.nvim'
M.name = 'nabla'
M.dependencies = { 'treesitter' }
M.fmt = {'latex', 'markdown', 'plaintex'}
M.config = function (_)
	require(_.name).enable_virt({
		autogen = true,
		silent = true,
	})
end

return M
