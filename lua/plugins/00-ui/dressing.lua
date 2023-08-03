local M = {}

M[1] = 'stevearc/dressing.nvim'

M.name = 'dressing'

local ok, opts = pcall(require, 'configs.ui.dressing')
M.opts = ok and opts or {}

return M
