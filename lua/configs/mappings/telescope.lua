local M = {}

M.mappings = {
	f = {
		name = 'find',
		f = { ':Telescope find_files<CR>', 'find files' },
		g = { ':Telescope grep_string<CR>', 'find the current word' },
		r = { ':Telescope live_grep<CR>', 'find in workspace' },
	},
	['<leader>g'] = {
		name = 'git',
		b = { ':Telescope git_branches<CR>', 'select git branch' },
		f = { ':Telescope git_files<CR>', 'git files' },
		s = { ':Telescope git_status<CR>', 'git status' },
		t = { ':Telescope git_stash<CR>', 'git stash' },
		c = { ':Telescope git_commits<CR>', 'git commits' },
	}
}

return M
