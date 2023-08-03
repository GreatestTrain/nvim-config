local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local M = function()
	local cmp = require('cmp')
	local configs = {}
	configs.snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end
	}
	configs.sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'buffer' },
		{ name = 'path' },
		{ name = 'doxygen' },
		{ name = 'pandoc_references' },
		{ name = 'nvim_lsp_signature_help' },
	})
	configs.window = {
	      completion = cmp.config.window.bordered(),
	      documentation = cmp.config.window.bordered(),
	}
	configs.mapping = function()
	    local luasnip = require 'luasnip'
		return cmp.mapping.preset.insert({
		      ['<C-k>'] = cmp.mapping.scroll_docs(-4),
		      ['<C-j>'] = cmp.mapping.scroll_docs(4),
		      ['<C-Space>'] = cmp.mapping.complete(),
		      ['<C-e>'] = cmp.mapping.abort(),
		      ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		      ["<Tab>"] = cmp.mapping(function(fallback)
			      if cmp.visible() then
			        cmp.select_next_item()
					-- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable() 
			      -- they way you will only jump inside the snippet region
			      elseif luasnip.expand_or_jumpable() then
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
		})
	end
	return configs

end


return M
