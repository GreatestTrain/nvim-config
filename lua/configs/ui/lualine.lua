local config = {

options = {
	icons_enabled = true,
	theme = 'auto',
	disabled_filetypes = { 'lazy', 'NvimTree' },
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'filename'},
		lualine_c = { 'diff', },
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	  },
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
}
}

return config
