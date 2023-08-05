local M = {}

-- M[#M+1] = require 'plugins.01-lsp.null-ls'
M[#M+1] = require 'plugins.01-lsp.cmp'
M[#M+1] = require 'plugins.01-lsp.neodev'
M[#M+1] = require 'plugins.01-lsp.lspconfig'
M[#M+1] = require 'plugins.01-lsp.mason'
M[#M+1] = require 'plugins.01-lsp.mason-lspconfig'
M[#M+1] = require 'plugins.01-lsp.lsp-signature-help'
M[#M+1] = require 'plugins.01-lsp.neogen'

return M
