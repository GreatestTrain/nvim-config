local config = function()
	return {
		options = {
			icons_enabled = true,
			disabled_filetypes = { 'lazy', 'NvimTree', 'neo-tree', 'Trouble', 'TelescopePrompt' },
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
				{ 'filename',    path = 1 },
				{ 'diagnostics', sources = { 'nvim_lsp' }, },
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
				{ 'filename',    path = 1 },
				{ 'searchcount' },
			},
			lualine_a = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		},
		tabline = {
			lualine_a = {
				{
					'branch',
					separator = { left = '', right = '' },
					on_click = function ()
						vim.cmd ':Telescope git_branches'
					end
				}
			},
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
						['neo-tree'] = false,
					},
					symbols = { alternate_file = '' },
					-- separator = { left = ' ', right = ' ' }
				},
			},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = { { 'tabs', mode = 3 } }
		}
	}
end

return config
