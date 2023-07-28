local M = {}

M[1] = 'metalelf0/jellybeans-nvim'
M.name = 'jellybeans-nvim'
M.dependencies = {
	{
		'rktjmp/lush.nvim',
		['name'] = 'lush'
	}
}

M.config = function (plugin)
	vim.cmd ("colorscheme " .. plugin.name)
end

return M
