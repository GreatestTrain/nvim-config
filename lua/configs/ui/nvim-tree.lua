local function on_attach(bufnr)
	local api = require 'nvim-tree.api'
	api.config.mappings.default_on_attach(bufnr)
	---@diagnostic disable-next-line: unused-function, unused-local
	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- vim.keymap.set('n', 't')
end

local config = function()
	return {
		disable_netrw = true,
		hijack_cursor = true,
		hijack_unnamed_buffer_when_opening = true,
		hijack_directories = {
			auto_open = false,
		},
		actions = {
			open_file = {
				eject = true,
				resize_window = true,
				window_picker = {
					enable = true,
					---@diagnostic disable-next-line: undefined-field
					picker = require('window-picker').pick_window,
				}
			}
		},

		diagnostics = {
			enable = true,
		},
		on_attach = on_attach,
	}
end

return config
