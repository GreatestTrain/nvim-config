-- nvim-cmp plugin specification

local M = {}

M[1] = 'hrsh7th/nvim-cmp'
M.name = 'cmp'
M.dependencies = {
	'lspconfig',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'luasnip',
	'saadparwaiz1/cmp_luasnip'
}

M.opts = require 'configs.cmp'

M.config = function(plugin, opts)
	local cmp = require(plugin.name)
	for key, value in pairs(opts) do
		if type(value) == "function" then
			opts[key] = value()
		end
	end
	cmp.setup(opts)
	cmp.setup.filetype('gitcommit', {
		sources = cmp.config.sources({
			{ name = 'git' },
		}, {
			{ name = 'buffer' },
		})
	})

	cmp.setup.cmdline({'/', '?'}, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = 'buffer' }
		}
	})
	cmp.setup.cmdline(':', {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = 'path' }
		}, {
			{ name = 'cmdline' }
		})
	})
end

return M
