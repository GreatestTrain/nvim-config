-- barbar.nvim
-- plugin specification
-- See: https://github.com/romgrk/barbar.nvim

---@type Plugin
local M = {}

M[1] = 'romgrk/barbar.nvim'
M.name = 'barbar'
M.dependencies = { 'lewis6991/gitsigns.nvim', 'nvim-web-devicons' }

M.init = function ()
	vim.g.barbar_auto_setup = false
end

local ok, config = pcall(require, 'configs.ui.barbar')
M.opts = ok and config or {}

return M
