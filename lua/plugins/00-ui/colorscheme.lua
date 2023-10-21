---@type Plugin
local M = {}

M[1] = 'npxbr/gruvbox.nvim'
M.name = 'gruvbox'
M.dependencies = {
	{
		'rktjmp/lush.nvim',
		name = 'lush'
	}
}

M.priority = 1000
---@diagnostic disable-next-line: unused-local
M.config = function (plugin, opts)
	vim.cmd [[:colorscheme gruvbox]]
end


return M
