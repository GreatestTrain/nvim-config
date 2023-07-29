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
	'petertriho/cmp-git',
	{ 'rcarriga/cmp-dap', dependencies = { 'dap' } },
	-- { 'aspeddro/cmp-pandoc.nvim', dependencies = { 'plenary', 'nabla', "aspeddro/pandoc.nvim"} },
	{
    	"paopaol/cmp-doxygen",
    	dependencies = {
      		"nvim-treesitter/nvim-treesitter",
      		"nvim-treesitter/nvim-treesitter-textobjects"
    	}
	},
	"jc-doyle/cmp-pandoc-references",
	'onsails/lspkind.nvim',
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
	local lspkind = require 'lspkind'
	cmp.setup(opts)
	cmp.setup { formatting = { format = lspkind.cmp_format({ mode='symbol', maxwidth=50 }) } }
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

	cmp.setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
  		sources = {
    		{ name = "dap" },
  	},
})
end

return M
