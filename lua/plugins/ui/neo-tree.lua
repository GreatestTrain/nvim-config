local M = {}

M[1] = "nvim-neo-tree/neo-tree.nvim"
M.name = "neo-tree"
M.branch = "v3.x"

M.dependencies = {
	"plenary",
	"nvim-web-devicons", -- not strictly required, but recommended
	"nui",
}

M.opts = require 'configs.ui.neo-tree'

return M
