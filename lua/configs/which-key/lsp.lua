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
		d = { function() t.diagnostics({bufnr = 0}) end, "List LSP diagnostics" },
		m = { vim.lsp.buf.rename, "Rename Object" },
		h = { vim.lsp.buf.hover, "Hover" },
		l = { vim.lsp.buf.format, "Format" }
	}
}

M.opts = {
	prefix = '<leader>',
	mode = 'n',
	noremap = false,
}

return M
