
local M = {}

local _, spectacle = pcall(require, 'spectacle')

M.mappings = {
	--n = { 'BufferNext' , 'Next Tab.' },
	--p = { 'BufferPrev' , 'Previous Tab.' },
	l = { ':bnext<CR>' , 'Next Tab.' },
	h = { ':bprev<CR>' , 'Previous Tab.' },
	x = { ':bd<CR>' , 'Close Tab.' },
	g = { ':LualineBuffersJump! v:count<CR>', 'Go to nth buffer'},
	r = { ':LualineRenameTab', 'Rename tab.'},
	s = { spectacle.SpectacleSave, 'Save Session' },
	S = { spectacle.SpectacleTelescope, 'Load Session'}
}

M.opts = {
	prefix = '<leader>t'
}

return M
