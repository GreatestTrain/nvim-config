local api = require 'nvim-tree.api'

local function attached(bufnr)
	api.config.mappings.default_on_attach(bufnr)
	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- vim.keymap.set('n', 't')
end

local config = function()
	return {
		on_attach = attached
	}
end

return config
