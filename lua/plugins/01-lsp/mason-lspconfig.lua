local M = {}

local ok, conf = pcall(require, 'config.lsp.mason_lspconfig')

M[1] = "williamboman/mason-lspconfig.nvim"
M.name = 'mason-lspconfig'
M.dependencies = 'mason'
M.opts = (ok) and conf or {}

return M

