local M = {}

M[#M+1] = require 'plugins.lsp.neodev'
M[#M+1] = require 'plugins.lsp.lspconfig'
M[#M+1] = require 'plugins.lsp.mason'
M[#M+1] = require 'plugins.lsp.dap'
M[#M+1] = require 'plugins.lsp.dap-ui'
M[#M+1] = require 'plugins.lsp.cmp'

return M
