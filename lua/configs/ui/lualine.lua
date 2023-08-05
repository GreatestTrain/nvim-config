local config = function()
	return {
		extensions = { 'nvim-tree' },
		options = {
			icons_enabled = true,
			disabled_filetypes = { 'lazy', 'NvimTree' },
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
			lualine_a = { 'filename' },
			lualine_b = {
				{ 'diagnostics', sources = { 'nvim_lsp' } }
			},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = { 'datetime' },
		},

		inactive_winbar = {
			lualine_a = { 'filename' },
			lualine_b = {
				{ 'diagnostics', sources = { 'nvim_lsp' } }
			},
			lualine_c = {},
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
						NvimTree = '',
					},
					symbols = { alternate_file = '' },
					separator = { left = ' ', right = ' ' }
				},
			},
			lualine_a = { { 'branch', separator = { left = '', right = '' } } },
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = { { 'tabs', separator = {}} }
		}
	}
end

return config
