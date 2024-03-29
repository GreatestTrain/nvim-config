local M = {}

M.mappings = {
	--n = { 'BufferNext' , 'Next Tab.' },
	--p = { 'BufferPrev' , 'Previous Tab.' },
	K = { vim.lsp.buf.hover, 'Hover'},
	t = {
		name = 'Tabs',
		l = { ':bnext<CR>', 'Next Buffer' },
		h = { ':bprev<CR>', 'Previous Buffer' },
		j = { ':tabprev<CR>', 'Previous Tab' },
		k = { ':tabnext<CR>', 'Next Tab' },
		x = { ':bd<CR>', 'Close Buffer' },
		q = { ':tabclose<CR>', 'Close Tab' },
		r = { function () vim.ui.input({prompt = 'New tab name'} , function (name) vim.cmd(':LualineRenameTab ' .. name) end) end, 'Rename tab' },

	},
	['<C-Space>'] = { ':Neotree toggle<CR>', 'Open neo-tree' },
	['<Tab>'] = { ':bn<CR>', 'Previous buffer' },
	['<S-Tab>'] = { ':bp<CR>', 'Next buffer' },
	['<S-Insert>'] = { '"+p', 'Copy' }
}

M.opts = {}

return M
