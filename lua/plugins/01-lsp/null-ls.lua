local M = {}

M[1] = 'jose-elias-alvarez/null-ls.nvim'
M.name = 'null-ls'
M.dependencies = { 'plenary' }

M.opts = function ()
	local null_ls = require 'null-ls'
	return {
		sources = {
			-- null_ls.builtins.formatting.stylua,
			-- null_ls.builtins.diagnostics.eslint,
			-- null_ls.builtins.completion.spell,
			null_ls.builtins.diagnostics.luacheck,
			null_ls.builtins.code_actions.gitrebase,
			null_ls.builtins.code_actions.gitsigns,
			null_ls.builtins.code_actions.shellcheck,
			null_ls.builtins.diagnostics.checkmake,
			null_ls.builtins.diagnostics.chktex,
			null_ls.builtins.diagnostics.clang_check,
			null_ls.builtins.diagnostics.cmake_lint,

		}
	}
end
return M
