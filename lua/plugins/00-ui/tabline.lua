---@type Plugin
local M = {}

M[1] = 'kdheepak/tabline.nvim'

M.name = 'tabline'
M.opts = { enable = false }
M.lazy = true
M.init = function()
	vim.cmd[[set sessionoptions+=tabpages,globals]]
end

return M
