-- Ui related plugins

---@type Plugin[]
local M = {}

M[#M+1] = require "plugins.00-ui.lualine"
M[#M+1] = require "plugins.00-ui.nvim-web-devicons"
M[#M+1] = require "plugins.00-ui.nui"
M[#M+1] = require "plugins.00-ui.nvim-tree"
M[#M+1] = require "plugins.00-ui.colorscheme"
M[#M+1] = require "plugins.00-ui.dressing"
M[#M+1] = require "plugins.00-ui.window-picker"
M[#M+1] = require "plugins.00-ui.scope"
M[#M+1] = require "plugins.00-ui.spectacle"

return M
