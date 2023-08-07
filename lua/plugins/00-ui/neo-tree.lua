local M = {}

M[1] = "nvim-neo-tree/neo-tree.nvim"
M.name = "neo-tree"
M.branch = "v3.x"

M.dependencies = {
	"plenary",
	"nvim-web-devicons", -- not strictly required, but recommended
	"nui",
	"s1n7ax/nvim-window-picker"
}

local ok, conf = pcall(require, 'configs.ui.neo-tree')
M.opts = ok and conf or {}

return M
