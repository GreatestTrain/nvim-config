---@type Plugin
local M = {}

M[1] = 'RutaTang/spectacle.nvim'
M.lazy = false
M.dependencies = { 'plenary', 'telescope' }

local ok, conf = pcall(require, 'configs.ui.spectacle')
M.opts = ok and conf or nil

return M
