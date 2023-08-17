---@type Plugin
local M = {}

M[1] = 'rockyzhang24/arctic.nvim'
M.name = 'arctic'
M.dependencies = {
	{
		'rktjmp/lush.nvim',
		name = 'lush'
	}
}

M.config = function ()
	vim.cmd ("colorscheme " .. "arctic")
end

return M
