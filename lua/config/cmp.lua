local m = function(cmp)
	local res =  {
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
				{ name = 'buffer' },
			})
		}

	return res
end

return m
