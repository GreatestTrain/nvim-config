---@module 'plugin_spec'

local M = {}

M[1] = 'EdenEast/nightfox.nvim'
M.name = 'nightfox'
M.dependencies = {
	{
		'rktjmp/lush.nvim',
		name = 'lush'
	}
}

M.config = function ()
	vim.cmd ("colorscheme " .. "carbonfox")
end

return M
