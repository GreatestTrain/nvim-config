local M = {}

local ok, t = pcall(require, 'telescope.builtin')
if not ok then
	return nil
end

M.mappings = {
	l = {
		name = 'LSP',
		r = { function() t.lsp_references() end, "List LSP references" },
		s = { t.lsp_workspace_symbols, "List LSP symbols" },
		m = { vim.lsp.buf.rename, "Rename Object" },
		h = { vim.lsp.buf.hover, "Hover" },
		l = { vim.lsp.buf.format, "Format" },
		a = { vim.lsp.buf.code_action, "Code action" },
		t = { ':TroubleToggle<CR>', 'Toggle diagnostics.' },
	}
}

M.opts = {
	prefix = '<leader>',
	mode = 'n',
	noremap = false,
}

return M
