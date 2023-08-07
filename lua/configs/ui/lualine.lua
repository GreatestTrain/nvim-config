local config = function()
	return {
		extensions = { 'nvim-tree' },
		options = {
			icons_enabled = true,
			disabled_filetypes = { 'lazy', 'NvimTree', 'neo-tree' },
		},
		sections = {
			lualine_a = { 'mode' },
			lualine_b = { 'branch' },
			lualine_c = { 'diff', },
			lualine_x = { 'encoding', 'fileformat', 'filetype' },
			lualine_y = { 'progress' },
			lualine_z = { 'location' }
		},
		inactive_sections = {
			lualine_a = { 'mode' },
			lualine_b = { 'branch' },
			lualine_c = { 'diff', },
			lualine_x = { 'encoding', 'fileformat', 'filetype' },
			lualine_y = { 'progress' },
			lualine_z = { 'location' }
		},
		winbar = {
			lualine_b = { { 'filetype', icon_only = true }, },
			lualine_c = {
				{ 'filename',     path = 1 },
				{ 'diagnostics',  sources = { 'nvim_lsp' }, },
				{ 'searchcount' }
			},
			lualine_a = {},
			lualine_y = {},
			lualine_z = {},
			lualine_x = { 'datetime' },
		},

		inactive_winbar = {
			lualine_b = { { 'filetype', icon_only = true }, },
			lualine_c = {
				{ 'diagnostics', sources = { 'nvim_lsp' } },
				{ 'filename', path = 1 },
				{ 'searchcount' },
			},
			lualine_a = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		},
		tabline = {
			lualine_b = {
				{
					'buffers',
					filetype_names = {
						TelescopePrompt = 'Telescope',
						dashboard = 'Dashboard',
						packer = 'Packer',
						fzf = 'FZF',
						alpha = 'Alpha',
						NvimTree = false,
					},
					symbols = { alternate_file = '' },
					separator = { left = ' ', right = ' ' }
				},
			},
			lualine_a = { { 'branch', separator = { left = '', right = '' } } },
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = { { 'tabs', mode = 2 } }
		}
	}
end

return config
