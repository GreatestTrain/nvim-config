local config = function()
	local null_ls = require 'null-ls'
	-- local helpers = require("null-ls.helpers")

	return {
		sources = {
			-- null_ls.builtins.formatting.codespell,
			null_ls.builtins.diagnostics.codespell.with({ args = { '-D', 'dictionary.txt', '-' } }),
			null_ls.builtins.code_actions.gitsigns,

			-- javascript
			null_ls.builtins.code_actions.eslint,
			null_ls.builtins.formatting.eslint,
			null_ls.builtins.diagnostics.eslint,
			null_ls.builtins.code_actions.refactoring,

			-- markdown
			null_ls.builtins.diagnostics.markdownlint_cli2,

			-- c/cpp
			null_ls.builtins.diagnostics.clang_check,
			null_ls.builtins.formatting.clang_format,
			null_ls.builtins.diagnostics.cppcheck,

			--Python
			-- null_ls.builtins.diagnostics.flake8,
			-- null_ls.builtins.diagnostics.mypy,
			-- null_ls.builtins.diagnostics.pydocstyle,
			-- null_ls.builtins.diagnostics.pycodestyle,
			-- null_ls.builtins.formatting.black,

			-- sh
			null_ls.builtins.formatting.shellharden,
			null_ls.builtins.code_actions.shellcheck,
			null_ls.builtins.hover.printenv,
			null_ls.builtins.formatting.uncrustify,

			--misc
			null_ls.builtins.formatting.scalafmt,
			null_ls.builtins.formatting.rustfmt,
			null_ls.builtins.formatting.prettier,

			null_ls.builtins.diagnostics.chktex,
			null_ls.builtins.formatting.latexindent,
			null_ls.builtins.formatting.bibclean
		}
	}
end

return config
