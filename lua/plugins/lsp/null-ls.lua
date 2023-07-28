local M = {}

M[1] = 'jose-elias-alvarez/null-ls.nvim'
M.name = 'null-ls'
M.dependencies = { 'plenary' }

M.opts = function ()
	local null_ls = require 'null-ls'
	return {
		sources = {
			null_ls.builtins.formatting.stylua,
			null_ls.builtins.diagnostics.eslint,
			-- null_ls.builtins.completion.spell,
		}
	}
end

M.enabled = false

return M
