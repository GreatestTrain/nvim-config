local M = {}

M.mappings = {
	f = {
		name = 'find',
		f = { ':Telescope find_files<CR>', 'find files' },
		g = { ':Telescope grep_string<CR>', 'find the current word' },
		r = { ':Telescope live_grep<CR>', 'find in workspace' },
	}

}

return M
