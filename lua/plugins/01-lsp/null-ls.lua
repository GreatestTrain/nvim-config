local M = {}

M[1] = 'jose-elias-alvarez/null-ls.nvim'
M.name = 'null-ls'
M.dependencies = { 'plenary' }

local ok, conf = pcall(require, 'configs.lsp.null-ls')
M.opts = ok and conf or {}

M.enabled = false

return M
