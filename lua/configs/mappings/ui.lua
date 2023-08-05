
local M = {}

M.mappings = {
	--n = { 'BufferNext' , 'Next Tab.' },
	--p = { 'BufferPrev' , 'Previous Tab.' },
	l = { ':BufferNext<CR>' , 'Next Tab.' },
	h = { ':BufferPrev<CR>' , 'Previous Tab.' },
	x = { ':BufferClose<CR>' , 'Close Tab.' },
	g = { ':BufferGoto v:count<CR>', 'Go to nth tab'}
}

M.opts = {
	prefix = '<leader>t'
}

return M
