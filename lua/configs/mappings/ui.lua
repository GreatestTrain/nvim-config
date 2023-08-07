local M = {}

M.mappings = {
	--n = { 'BufferNext' , 'Next Tab.' },
	--p = { 'BufferPrev' , 'Previous Tab.' },
	t = {
		name = 'Tabs',
		l = { ':bnext<CR>', 'Next Tab.' },
		h = { ':bprev<CR>', 'Previous Tab.' },
		x = { ':bd<CR>', 'Close Tab.' },
		r = { function () vim.ui.input({prompt = 'New tab name'} , function (name) vim.cmd(':LualineRenameTab ' .. name) end) end, 'Rename tab.' },

	}
}

M.opts = {}

return M
