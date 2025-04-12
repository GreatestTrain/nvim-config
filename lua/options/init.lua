-- Theme options
vim.o.number	 	= true
vim.o.list			= true
vim.o.shiftwidth 	= 4
vim.o.tabstop	 	= 4
vim.g.mapleader 	= " "
vim.g.maplocalleader = "\\"

-- Load neovide opts if necessary - lua/neovide_options.lua
if vim.g.neovide then
  local _, _ = require 'options.neovide'
end

