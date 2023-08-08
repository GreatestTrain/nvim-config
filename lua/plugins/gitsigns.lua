--- gitsigns
--- plugin specification
--- See: https://github.com/lewis6991/gitsigns.nvim

---@type Plugin
local M = {}

M[1] = 'lewis6991/gitsigns.nvim'
M.name = 'gitsigns'

local ok, conf = pcall(require, 'configs.gitsigns')
M.opts = ok and conf or {}

return M
