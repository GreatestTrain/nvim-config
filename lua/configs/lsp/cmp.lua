---@diagnostic disable: undefined-field

local has_words_before = function()
	unpack = unpack or table.unpack
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('[%a%.%:]')
end

---@return table<string, table>
local M = function()
	local cmp = require 'cmp'
	local luasnip = require 'luasnip'
	local lspkind = require 'lspkind'
	return {
		snippet = {
			expand = function(args)
				---@diagnostic disable-next-line: undefined-field
				luasnip.lsp_expand(args.body)
			end
		},
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
		sources =
			cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'nvim_lsp_document_symbol' },
				{ name = 'nvim_lsp_signature_help' },
				{ name = 'luasnip' },
				{ name = 'luasnip_choice' },
				{ name = 'path' },
				{ name = 'buffer' },
				{
					name = 'spell',
					option = {
						keep_all_entries = true,
						enable_in_context = function()
							return require('cmp.config.context').in_treesitter_capture('spell')
						end
					}
				},
				{ name = 'pandoc_references' },
			}),
		---@type table<string, any>
		mapping = cmp.mapping.preset.insert({
			['<C-k>'] = cmp.mapping.scroll_docs(-4),
			['<C-j>'] = cmp.mapping.scroll_docs(4),
			['<C-Space>'] = cmp.mapping.complete(),
			['<C-e>'] = cmp.mapping.abort(),
			['<CR>'] = cmp.mapping.confirm({ select = false }),
			["<Tab>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				elseif luasnip.expand_or_locally_jumpable() then
					luasnip.expand_or_jump()
				elseif has_words_before() then
					cmp.complete()
				else
					fallback()
				end
			end, { "i", "s" }),
			["<S-Tab>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_prev_item()
				elseif luasnip.jumpable(-1) then
					luasnip.jump(-1)
				else
					fallback()
				end
			end, { "i", "s" }),
		}),
		formatting = { format = lspkind.cmp_format({ mode = 'symbol', maxwidth = 50 }) },
		-- enabled = function()
			-- local context = require 'cmp.config.context'
			-- if vim.api.nvim_get_mode().mode == 'c' then
				-- return true
			-- else
				-- return not context.in_treesitter_capture('comment')
					-- and not context.in_syntax_group('Comment')
			-- end
		-- end
	}
end

return M
