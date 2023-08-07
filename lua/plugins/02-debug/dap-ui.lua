---@type Plugin
local M = {}

M[1] = 'rcarriga/nvim-dap-ui'
M.name = 'dap-ui'

M.dependencies = {'dap'}

local ok, conf = pcall(require, 'configs.lsp.dapui')
M.opts = ok and conf or {}

return M
