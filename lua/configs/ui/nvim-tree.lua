local function on_attach(bufnr)
	local api = require 'nvim-tree.api'
	api.config.mappings.default_on_attach(bufnr)
	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- vim.keymap.set('n', 't')
end

local config = function()
	return {
		disable_netrw = true,
		hijack_cursor = true,
		actions = {
			open_file = {
				window_picker = {
					enable = true,
---@diagnostic disable-next-line: undefined-field
					picker = require('window-picker').pick_window,
				}
			}
		},
		on_attach = on_attach,
	}
end

return config
