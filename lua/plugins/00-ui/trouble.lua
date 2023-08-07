--- trouble
--- plugin specification
--- See: https://github.com/folke/trouble.nvim

---@type Plugin
local M = {}

M[1] = 'folke/trouble.nvim'
M.name = 'trouble'

M.lazy = false

M.dependencies = { 'nvim-web-devicons' }

local ok, conf = pcall(require, 'configs.ui.trouble')
M.opts = ok and conf or {}

return M
