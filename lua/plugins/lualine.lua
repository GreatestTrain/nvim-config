local status, config = pcall(require, "config.lualine")

return {
	'nvim-lualine/lualine.nvim', name = "lualine", dependecies = { 'nvim-web-devicons' },
	config = config and status or nil
}
