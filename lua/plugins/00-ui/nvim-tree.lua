-- nvim-tree
-- plugin specification
-- See: https://github.com/nvim-tree/nvim-tree.lua
------------------------------------------------------

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

---@type Plugin
local M = {}

M[1] = 'nvim-tree/nvim-tree.lua'
M.name = 'nvim-tree'

M.dependencies = { 'nvim-web-devicons', 'window-picker' }

local ok, conf = pcall(require, 'configs.ui.nvim-tree')

M.opts = ok and conf or {}

M.config = function (_, opts)
	require('nvim-tree').setup(opts)
	xx = opts
end

return M
