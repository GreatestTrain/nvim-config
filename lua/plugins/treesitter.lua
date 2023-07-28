local M = {}

M[1] = 'nvim-treesitter/nvim-treesitter'
M.name = 'treesitter'
M.build = function ()
	vim.cmd [[:TSUpdate]]
end

M.opts = {
	ensure_installed = { 'lua', 'python', 'c', 'c++', 'latex' }
}

return M
