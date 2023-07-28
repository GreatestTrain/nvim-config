-- nvim-cmp plugin specification

local M = {}

local ok, conf = pcall(require, 'configs.lsp.cmp')

M[1] = 'hrsh7th/nvim-cmp'
M.name = 'cmp'
M.dependencies = {
	'lspconfig',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'luasnip',
	'saadparwaiz1/cmp_luasnip',
	'kdheepak/cmp-latex-symbols',
	'petertriho/cmp-git'
}

-- M.opts = require 'configs.cmp'
M.opts = (ok) and conf or {}

M.config = function(plugin, opts)
	local cmp = require(plugin.name)
	for key, value in pairs(opts) do
		if type(value) == "function" then
			opts[key] = value()
		end
	end
	cmp.setup(opts)

	cmp.setup.filetype({'tex, markdown', 'plaintex'}, {
		mapping = opts.mapping,
		sources = {
			{ name = "latex_symbols", option = { strategy = 2 } },
			{ name = "buffer" }
		}
	})
	cmp.setup.filetype('julia', {
		mapping = opts.mapping,
		sources = {
			{ name = "latex_symbols", option = { strategy = 0 } }
		}
	})
	cmp.setup.filetype('gitcommit', {
		mapping = opts.mapping,
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
