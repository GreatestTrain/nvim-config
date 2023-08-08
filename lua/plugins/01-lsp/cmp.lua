-- nvim-cmp 
-- plugin specification
-- See: 

---@type Plugin
local M = {}

M[1] = 'hrsh7th/nvim-cmp'
M.name = 'cmp'
M.dependencies = {
	'luasnip',
	'lspconfig',
	'lsp-signature-help',
	{ 'windwp/nvim-autopairs',                name = 'autopairs' },
	{ 'saadparwaiz1/cmp_luasnip',             name = 'cmp-luasnip' },
	{ 'L3MON4D3/cmp-luasnip-choice',          name = 'cmp-luasnip-choice' },
	{ 'hrsh7th/cmp-nvim-lsp',                 name = 'cmp-nvim-lsp' },
	{ 'hrsh7th/cmp-nvim-lsp-document-symbol', name = 'cmp-nvim-lsp-document-symbol' },
	{ 'hrsh7th/cmp-buffer',                   name = 'cmp-buffer' },
	{ 'hrsh7th/cmp-path',                     name = 'cmp-path' },
	{ 'hrsh7th/cmp-cmdline',                  name = 'cmp-cmdline' },
	{ 'f3fora/cmp-spell',                     name = 'cmp-spell' },
	{ 'kdheepak/cmp-latex-symbols',           name = 'cmp-latex-symbols' },
	{ 'petertriho/cmp-git',                   name = 'cmp-git' },
	{ 'rcarriga/cmp-dap',                     name = 'cmp-dap',                     dependencies = { 'dap' } },
	{ 'onsails/lspkind.nvim',                 name = 'lspkind' },
	{ 'jc-doyle/cmp-pandoc-references',       name = 'cmp-pandoc' }
}

local ok, conf = pcall(require, 'configs.lsp.cmp')
M.opts = ok and conf or {}

M.config = function(plugin, opts)
	local cmp = require(plugin.name)
	local cmp_autopairs = require('nvim-autopairs.completion.cmp')
	cmp.setup(opts)

	cmp.setup.filetype({ 'tex, markdown', 'plaintex' }, {
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

	cmp.setup.cmdline({ '/', '?' }, {
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

	cmp.event:on(
		'confirm_done',
		cmp_autopairs.on_confirm_done()
	)
end

return M
