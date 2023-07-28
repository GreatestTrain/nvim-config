local M = {}

M[#M+1] = require 'plugins.02-debug.dap'
M[#M+1] = require 'plugins.02-debug.dap-ui'

return M
