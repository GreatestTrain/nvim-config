-- Theme options
vim.o.number	 	= true
vim.o.shiftwidth 	= 4
vim.o.tabstop	 	= 4
vim.o.list			= 4
vim.cmd [[ :colorscheme murphy ]]

-- Load neovide opts if necessary - lua/neovide_options.lua
if vim.g.neovide then
	require 'neovide_options'
end

