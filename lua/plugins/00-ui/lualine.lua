-- Lualine.nvim plugin specs --
-- https://github.com/nvim-lualine/lualine.nvim --

local M = {}

M[1] = "nvim-lualine/lualine.nvim"
M.name = "lualine"
M.dependencies = {
	"nvim-web-devicons"
}

M.opts = require "configs.ui.lualine"

return M
